connection: "blendo_database"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: cont_ic_conversations {
  label: "Conversations"

  join: cont_ic_admins {
    type: left_outer
    sql_on: ${cont_ic_conversations.assignee_id} = ${cont_ic_admins.id} ;;
    relationship: many_to_one
  }
}

explore: cont_ic_conversations_parts {
  label: "Conversation Details"
  join: cont_ic_admins {
    type: left_outer
    sql_on: ${cont_ic_conversations_parts.assigned_to_id} = ${cont_ic_admins.id} ;;
    relationship: many_to_one
  }

}

explore: req_wait_time {
  label: "Requester Wait Time"
}

explore: first_resolution {
  label: "First Time Resolution"
}

explore:  first_response {
  label: "First Time Response"
}

explore:full_resolution {
  label: "Full Time Resolution"
}

explore: ticket_status {}

explore: ticket_stats {
  label: "Ticket Statistics"
  join: cont_ic_admins {
    type: left_outer
    sql_on: (${ticket_stats.assignee_id} = ${cont_ic_admins.id}) ;;
    relationship: many_to_one
  }
}

explore: percent_of_tickets_solved {}

explore: cont_ic_users {
  label: "Users"
}
