view: cont_ic_conversations_parts {
  sql_table_name: public.cont_ic_conversations_parts;;

  measure: tickets_cnt {
    type:  count_distinct
    sql: ${TABLE}.id ;;
  }

  measure: passed_tickets {
    type:  count_distinct
    sql: ${TABLE}.id ;;
    filters: {
      field: part_type
      value: "assignment"
    }
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assigned_to_id {
    type: string
    sql: ${TABLE}.assigned_to_id ;;
  }

  dimension: assigned_to_type {
    type: string
    sql: ${TABLE}.assigned_to_type ;;
  }

  dimension: author_id {
    type: string
    sql: ${TABLE}.author_id ;;
  }

  dimension: author_type {
    type: string
    sql: ${TABLE}.author_type ;;
  }

  dimension: part_type {
    type: string
    sql: ${TABLE}.part_type ;;
  }

  dimension: blendo_imported_at {
    type: number
    sql: ${TABLE}.blendo_imported_at ;;
  }

  dimension: body {
    type: string
    sql: ${TABLE}.body ;;
  }

  dimension: conversation_id {
    type: string
    sql: ${TABLE}.conversation_id ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.updated_at;;
  }

  measure: last_update {
    type:  date
    sql:  MAX(${TABLE}.updated_at) ;;
  }

}
