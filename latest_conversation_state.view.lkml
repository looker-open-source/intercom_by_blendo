view: latest_conversation_state {
  derived_table: {
    sql: SELECT p.part_type
      FROM
        (SELECT conversation_id,
                max(updated_at) AS lastUpdate
         FROM cont_ic_conversations_parts
         GROUP BY conversation_id) tmp,
           cont_ic_conversations_parts AS p
      WHERE tmp.conversation_id=p.conversation_id
        AND tmp.lastUpdate=p.updated_at
        AND p.part_type = 'close'
       ;;
  }

  measure: ticket_count {
    type: count
  }

}
