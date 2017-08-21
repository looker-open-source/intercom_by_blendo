view: cont_ic_conversations {
  sql_table_name: public.cont_ic_conversations ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: tickets_cnt {
    description: "Total Number of Tickets"
    type:  count_distinct
    sql: ${id} ;;
  }

  dimension: close{
    type: yesno
    sql: NOT ${TABLE}.open ;;
  }

  dimension: untouched{
    type: yesno
    sql: NOT ${TABLE}.read ;;
  }

  measure: percent_of_tickets{
    type: percent_of_total
    sql: ${tickets_cnt} ;;
  }


  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: assignee_type {
    type: string
    sql: ${TABLE}.assignee_type ;;
  }


  dimension_group: created_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: latest {
    description: "Check if the ticket is created the last 200 days"
    type: yesno
    sql: (${TABLE}.created_at > CURRENT_TIMESTAMP - interval '200 days');;
  }




}
