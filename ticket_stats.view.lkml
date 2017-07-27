view: ticket_stats {
  derived_table: {
    sql: SELECT tmp.*,  cont_ic_conversations_parts.assigned_to_id, cont_ic_conversations_parts.part_type as type
      FROM
      (SELECT conversation_id,
      count(CASE
      WHEN part_type ='comment' THEN 1
      ELSE NULL
      END) AS comments,
      count(CASE
      WHEN part_type ='close' THEN 1
      ELSE NULL
      END) AS close
      FROM cont_ic_conversations_parts
      GROUP BY conversation_id)tmp, cont_ic_conversations_parts
      where tmp.conversation_id = cont_ic_conversations_parts.conversation_id
       ;;
  }

  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assigned_to_id ;;
  }

  dimension: conversation_id {
    type:  string
    sql: ${TABLE}.conversation_id ;;
  }

  dimension: comments {
    type: number
    sql: ${TABLE}.comments ;;
  }

  dimension:  close {
    type: number
    sql: ${TABLE}.close ;;
  }

  measure: new_count {
    type: count
    filters: {
      field: comments
      value: "0"
    }
    filters: {
      field: close
      value: "0"
    }

  }

  measure: one_touch {
    type: count
    filters: {
      field: comments
      value: "1"
    }
    filters: {
      field: close
      value: ">0"
    }
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: closed_count {
    type: count
    filters: {
      field: type
      value: "close"
    }
  }
}
