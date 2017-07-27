view: percent_of_tickets_solved {
  derived_table: {
    sql: SELECT 100* totalClosed.cnt as totalClosed, closed.cnt as closed
      FROM
      (SELECT count(p.part_type) AS cnt
      FROM
      (SELECT conversation_id,
      max(updated_at) AS lastUpdate
      FROM cont_ic_conversations_parts
      GROUP BY conversation_id) tmp,
      cont_ic_conversations_parts AS p
      WHERE tmp.conversation_id=p.conversation_id
      AND tmp.lastUpdate=p.updated_at
      AND p.part_type = 'close' ) totalClosed,

      (SELECT count(*) AS cnt
      FROM
      (SELECT DISTINCT conversation_id
      FROM cont_ic_conversations_parts)tmp)closed
       ;;
  }

  measure: percent_solved{
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.totalClosed/${TABLE}.closed ;;
    }

  set: detail {
    fields: [percent_solved]
  }
}
