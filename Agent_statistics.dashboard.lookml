- dashboard: agent_statistics
  title: Agent Statistics
  layout: newspaper
  elements:
  - name: Ticket Distribution
    title: Ticket Distribution
    model: intercom
    explore: ticket_stats
    type: looker_pie
    fields:
    - cont_ic_admins.name
    - cont_ic_conversations.tickets_cnt
    sorts:
    - cont_ic_conversations.tickets_cnt desc
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 0
    width: 12
    height: 7
  - name: Closed Tickets by Assignee
    title: Closed Tickets by Assignee
    model: intercom
    explore: ticket_stats
    type: looker_pie
    fields:
    - cont_ic_admins.name
    - ticket_stats.closed_count
    filters:
      cont_ic_admins.name: "-NULL"
    sorts:
    - cont_ic_admins.name
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 0
    col: 12
    width: 12
    height: 7
