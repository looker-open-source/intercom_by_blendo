view: first_resolution {
  derived_table: {
    sql:  SELECT  EXTRACT(epoch FROM (fRe.firstResolution - fOp.firstOpen))/3600 as dif,
    date_trunc('day', fRe.firstResolution) as date,
    fRe.conversation_id as conversation_id
      FROM
      (SELECT conversation_id,
      min(updated_at) AS firstResolution
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
      AND (fRe.firstResolution - fOp.firstOpen)>=interval '0'
 ;;
  }

  dimension: conversation_id {
    type: string
    sql: ${TABLE}.conversation_id ;;
  }

  measure: maximum {
    description: "Max time in Hours"
    type: max
    sql: ${TABLE}.dif ;;
    value_format_name: decimal_1
    drill_fields: [conversation_id, cont_ic_admins.name, cont_ic_admins.email]
  }

  measure: minimum {
    type: min
    sql:${TABLE}.dif ;;
  }

  measure: average {
    type: average
    sql:${TABLE}.dif  ;;
  }

  measure: median {
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
