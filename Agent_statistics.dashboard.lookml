- dashboard: agent_statistics
  title: Agent Statistics
  layout: tile
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1497446527
    title: Ticket Distribution
    model: intercom
    explore: cont_ic_conversations
    type: looker_pie
    fields: [cont_ic_conversations.tickets_cnt, cont_ic_admins.name]
    sorts: [cont_ic_conversations.tickets_cnt desc]
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
    colors: 'palette: Looker Classic'
    series_colors: {}

  - name: add_a_unique_name_1498127734
    title: Closed Tickets by Assignee
    model: intercom
    explore: ticket_stats
    type: looker_pie
    fields: [ticket_stats.closed_count, cont_ic_admins.name]
    filters:
      cont_ic_admins.name: "-NULL"
      ticket_stats.assignee_id: "-NULL"
    sorts: [ticket_stats.closed_count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}


  - name: add_a_unique_name_1498137023
    title: Reassigned Tickets By Agent
    model: intercom
    explore: cont_ic_conversations_parts
    type: looker_column
    fields: [cont_ic_conversations_parts.passed_tickets, cont_ic_admins.name]
    filters:
      cont_ic_admins.name: "-NULL"
      cont_ic_conversations_parts.passed_tickets: ">5"
    sorts: [cont_ic_conversations_parts.passed_tickets desc]
    limit: 1000
    column_limit: 50
    total: true
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    value_labels: legend
    label_type: labPer
    font_size: '12'
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    swap_axes: false
    x_axis_reversed: false
    series_colors:
      cont_ic_conversations_parts.passed_tickets: "#a9c574"
    y_axis_reversed: false
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
