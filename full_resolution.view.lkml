view: full_resolution {
  derived_table: {
    sql:  SELECT  EXTRACT(epoch FROM (fRe.fullResolution - fOp.firstOpen))/3600 as dif,
          fRe.fullResolution as date
             FROM
      (SELECT conversation_id,
      max(updated_at) AS fullResolution
      FROM cont_ic_conversations_parts
      WHERE part_type='close'
      GROUP BY conversation_id) fRe,

      (SELECT conversation_id,
      min(updated_at) AS firstOpen
      FROM cont_ic_conversations_parts
      WHERE part_type='comment'
      AND author_type='user'
      GROUP BY conversation_id) fOp
      WHERE fRe.conversation_id=fOp.conversation_id
      AND (fRe.fullResolution - fOp.firstOpen)>=interval '0'
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
