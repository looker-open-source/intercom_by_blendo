view: percent_of_tickets_solved {
  derived_table: {
    sql: SELECT totalClosed.cnt*100.0/closed.cnt as percent_solved, lastUpdate
FROM
  (SELECT count(p.part_type) AS cnt, lastUpdate
   FROM
     (SELECT conversation_id,
             max(updated_at) AS lastUpdate
      FROM cont_ic_conversations_parts
      GROUP BY conversation_id) tmp,
        cont_ic_conversations_parts AS p
   WHERE tmp.conversation_id=p.conversation_id
     AND tmp.lastUpdate=p.updated_at
     AND p.part_type = 'close'
  group by lastUpdate) totalClosed,

  (SELECT count(*) AS cnt
   FROM
     (SELECT DISTINCT conversation_id
      FROM cont_ic_conversations_parts)tmp)closed
       ;;
  }

  dimension: percent_solved {
    type: number
    value_format: "0.00\%"
    sql: ${TABLE}.percent_solved ;;
  }

  dimension_group: last_update {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.lastUpdate ;;
  }

  set: detail {
    fields: [percent_solved]
  }
}
