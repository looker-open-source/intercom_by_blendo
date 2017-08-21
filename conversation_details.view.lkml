view: cont_ic_conversations_parts {
  sql_table_name: public.cont_ic_conversations_parts;;

  measure: tickets_cnt {
    type:  count_distinct
    sql: ${TABLE}.id ;;
  }
# !!! from count  to distinct to remove error
  measure: passes {
    description: "Total number of assignments envolved"
    type: count_distinct
    sql: ${TABLE}.part_type = 'assignment' ;;
  }
# !!! from count  to distinct to remove error
#  measure: got_passed {
#    description: "Checks if a ticket was re-assigned"
#    type: count_distinct
#    sql: ${passes} > 1 ;;
#  }

 # measure: one_touch {
#    description: "Number of one_touch tickets"
#    type: number
#    sql: ${tickets_cnt}-${got_passed} ;;
#  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assigned_to_id {
    type: string
    sql: ${TABLE}.assigned_to_id ;;
  }

 # dimension: assigned_to_type {
#    type: string
#    sql: ${TABLE}.assigned_to_type ;;
#  }

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

  #dimension: blendo_imported_at {
  #  type: number
  #  sql: ${TABLE}.blendo_imported_at ;;
  #}

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

}
