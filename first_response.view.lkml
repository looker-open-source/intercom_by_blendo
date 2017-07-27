view: first_response {
  derived_table: {
    sql: SELECT   EXTRACT(epoch FROM (fCo.firstComment - fOp.firstOpen))/3600 as dif,
    date_trunc('day', fCo.firstComment) as date
      FROM
        (SELECT conversation_id,
                min(updated_at) AS firstComment
         FROM cont_ic_conversations_parts
         WHERE part_type='comment'
           AND author_type='admin'
         GROUP BY conversation_id) fCo,

        (SELECT conversation_id,
                min(updated_at) AS firstOpen
         FROM cont_ic_conversations_parts
         WHERE part_type='comment'
           AND author_type='user'
         GROUP BY conversation_id) fOp
      WHERE fCo.conversation_id=fOp.conversation_id
        AND (fCo.firstComment - fOp.firstOpen)>=interval '0'

 ;;
  }

  measure: maximum {
    type: max
    sql: ${TABLE}.dif ;;
  }

  measure: minimum {
    type: min
    sql:${TABLE}.dif ;;
  }

  measure: avg {
    type: average
    sql:${TABLE}.dif  ;;
  }

  measure: med {
    type: median
    sql:${TABLE}.dif  ;;
  }

  dimension_group: date {
    type: time
    timeframes: [date, day_of_week, week, month]
    sql: ${TABLE}.date ;;
    drill_fields: [date_date, date_day_of_week, date_week, date_month]
  }

}
