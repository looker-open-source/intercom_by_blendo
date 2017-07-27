- dashboard: general_statistics
  title: General Statistics
  layout: tile
  tile_size: 100

  filters:

  elements:

  - name: add_a_unique_name_1498136039
    title: User Distrbution
    model: intercom
    explore: cont_ic_users
    type: looker_pie
    fields: [cont_ic_users.city, cont_ic_users.count]
    sorts: [cont_ic_users.city]
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
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}

  - name: add_a_unique_name_1498127214
    title: Ticket Openings and Closures during past month
    width: 12
    model: intercom
    explore: ticket_status
    type: looker_area
    fields: [ticket_status.last_update, ticket_status.open_tickets, ticket_status.solved_tickets]
    fill_fields: [ticket_status.last_update]
    filters:
      ticket_status.last_update: 2017/03/01 to 2017/03/31
    sorts: [ticket_status.last_update]
    limit: 500
    column_limit: 50
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
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    reference_lines: []
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: ticket_status.solved_tickets,
            name: Ticket Status Solved Tickets}, {id: ticket_status.open_tickets, name: Ticket
              Status Open Tickets}]}]
    hidden_series: []


  - name: add_a_unique_name_1497952204
    title: One Touch Tickets
    height: 2
    model: intercom
    explore: ticket_stats
    type: single_value
    fields: [ticket_stats.one_touch]
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true

  - name: add_a_unique_name_1497960605
    title: New Tickets
    height: 2
    model: intercom
    explore: ticket_stats
    type: single_value
    fields: [ticket_stats.new_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true

  - name: add_a_unique_name_1497965306
    title: Percent of tickets solved
    height: 2
    model: intercom
    explore: percent_of_tickets_solved
    type: single_value
    fields: [percent_of_tickets_solved.percent_solved]
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true

  - name: add_a_unique_name_1498134436
    title: Ticket Creation By Month
    width: 9
    model: intercom
    explore: cont_ic_conversations
    type: looker_column
    fields: [cont_ic_conversations.tickets_cnt, cont_ic_conversations.created_at_month]
    fill_fields: [cont_ic_conversations.created_at_month]
    filters:
      cont_ic_conversations.created_at_date: 2016/10/01 to 2017/04/01
    sorts: [cont_ic_conversations.tickets_cnt desc]
    limit: 500
    column_limit: 50
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
    value_labels: legend
    label_type: labPer
    font_size: '12'
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors: ['palette: Looker Classic']
    series_colors:
      cont_ic_conversations.tickets_cnt: "#928fb4"
    column_spacing_ratio:
    column_group_spacing_ratio:
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: cont_ic_conversations.tickets_cnt,
            name: Cont Ic Conversations Tickets Cnt}]}]
    show_dropoff: true
    reference_lines: [{reference_type: line, line_value: median, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]

  - name: add_a_unique_name_1498137193
    title: Ticket Creation By Week
    width: 9
    model: intercom
    explore: cont_ic_conversations
    type: looker_column
    fields: [cont_ic_conversations.tickets_cnt, cont_ic_conversations.created_at_week]
    fill_fields: [cont_ic_conversations.created_at_week]
    filters:
      cont_ic_conversations.created_at_date: 2016/10/01 to 2017/04/01
    sorts: [cont_ic_conversations.tickets_cnt desc]
    limit: 500
    column_limit: 50
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
    value_labels: legend
    label_type: labPer
    font_size: '12'
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    colors: ['palette: Looker Classic']
    series_colors:
      cont_ic_conversations.tickets_cnt: "#928fb4"
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: cont_ic_conversations.tickets_cnt,
            name: Cont Ic Conversations Tickets Cnt, __FILE: intercom/General_statistics.dashboard.lookml,
            __LINE_NUM: 220}], __FILE: intercom/General_statistics.dashboard.lookml,
        __LINE_NUM: 218}]
    show_dropoff: false
    reference_lines: [{reference_type: line, line_value: median, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", __FILE: intercom/General_statistics.dashboard.lookml, __LINE_NUM: 223}]
