view: cont_ic_conversations {
  sql_table_name: public.cont_ic_conversations ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  measure: tickets_cnt {
    type:  count_distinct
    sql: ${id} ;;
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
    type: yesno
    sql: (${TABLE}.created_at > CURRENT_TIMESTAMP - interval '200 days');;
  }




}
