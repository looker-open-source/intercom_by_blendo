view: ticket_stats {
  derived_table: {
    sql: SELECT conversation_id,
      count(CASE
      WHEN part_type ='comment' THEN 1
      ELSE NULL
      END) AS comments,
      count(CASE
      WHEN part_type ='close' THEN 1
      ELSE NULL
      END) AS close
      FROM cont_ic_conversations_parts
      GROUP BY conversation_id
       ;;
  }

  dimension: conversation_id {
    primary_key: yes
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
}
