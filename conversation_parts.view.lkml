view: conversations_parts {
  sql_table_name: public.cont_ic_conversations_parts;;


  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: assigned_to_id {
    type: string
    sql: ${TABLE}.assigned_to_id ;;
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

  measure: parts_count {
    type:  count_distinct
    sql: ${TABLE}.id ;;
  }

#  measure: passes {
#    description: "Total number of assignments envolved"
#    type: count_distinct
#    sql_distinct_key: ${conversation_id} ;;
#    sql: ${TABLE}.part_type = 'assignment' ;;
#    drill_fields: [id, part_type]
#
#  }

  measure: count {
    type: count
    drill_fields: [updated_month, count]
  }

  measure: percent_of_tickets{
    description: "Calculates a cell’s portion of the column total. The percentage is being calculated against the total of the displayed rows"
    type: percent_of_total
    sql: ${count} ;;
  }

}
