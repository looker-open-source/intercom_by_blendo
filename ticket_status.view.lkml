view: ticket_status {
  derived_table: {
    sql: SELECT conv.part_type as part_type, tmp.up as last_update,
      tmp.conversation_id as id, assigned_to_id as assigned_to,
      tmp.conversation_id from
      (SELECT max(updated_at) AS up, conversation_id
      FROM cont_ic_conversations_parts
      GROUP BY conversation_id)tmp,
      cont_ic_conversations_parts AS conv
      WHERE conv.conversation_id=tmp.conversation_id
      AND conv.updated_at=tmp.up
       ;;
  }

  dimension: conversation_id {
    type: string
    sql: ${TABLE}.conversation_id ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.assigned_to ;;
  }

  dimension: last_update {
    type: date
    sql: ${TABLE}.last_update ;;
  }

  dimension: part_type {
    type: string
    sql: ${TABLE}.part_type ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: tickets_count {
    type:  count_distinct
    sql: ${TABLE}.id ;;
  }


}
