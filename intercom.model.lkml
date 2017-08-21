connection: "blendo_database"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: ticket_stats {
  label: "Agent Statistics"
  join: cont_ic_admins {
    type: left_outer
    sql_on: (${ticket_stats.assignee_id} = ${cont_ic_admins.id}) ;;
    relationship: many_to_one
  }
  join: cont_ic_conversations {
    type: left_outer
    sql_on: ${cont_ic_conversations.assignee_id} = ${cont_ic_admins.id} ;;
    relationship: many_to_many
  }
}

explore: cont_ic_conversations_parts {
  label: "Ticket Statistics"
  join: cont_ic_admins {
    type: left_outer
    sql_on: ${cont_ic_conversations_parts.assigned_to_id} = ${cont_ic_admins.id} ;;
    relationship: many_to_one
  }
  join: cont_ic_conversations {
    type: left_outer
    sql_on: ${cont_ic_conversations.id} = ${cont_ic_conversations_parts.conversation_id} ;;
    relationship: many_to_one
  }
  join: resolution_metrics {
    type: left_outer
    sql_on: ${cont_ic_conversations_parts.conversation_id} = ${resolution_metrics.conversation_id};;
    relationship: many_to_one
  }

  join: req_wait_time {
    type: left_outer
    sql_on: ${cont_ic_conversations_parts.conversation_id} = ${req_wait_time.id};;
    relationship: many_to_one
  }
  join: ticket_status {
    type: left_outer
    sql_on: ${cont_ic_conversations_parts.conversation_id} = ${ticket_status.conversation_id};;
    relationship: many_to_one
  }
}

explore: cont_ic_users {
  label: "Users"
}
