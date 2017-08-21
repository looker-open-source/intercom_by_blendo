- dashboard: resolution_statistics
  title: Resolution Statistics
  layout: newspaper
  elements:
  - name: First Resolution
    title: First Resolution
    model: intercom
    explore: cont_ic_conversations_parts
    type: looker_line
    fields:
    - resolution_metrics.first_Resolution_average
    - resolution_metrics.first_Resolution_maximum
    - resolution_metrics.first_Resolution_median
    - resolution_metrics.first_Resolution_minimum
    - resolution_metrics.date_week
    fill_fields:
    - resolution_metrics.date_week
    filters:
      resolution_metrics.date_month: NOT NULL
    sorts:
    - resolution_metrics.date_week desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    focus_on_hover: true
    row: 0
    col: 0
    width: 12
    height: 7
  - name: First Response
    title: First Response
    model: intercom
    explore: cont_ic_conversations_parts
    type: looker_line
    fields:
    - resolution_metrics.first_Response_average
    - resolution_metrics.first_Response_maximum
    - resolution_metrics.first_Response_median
    - resolution_metrics.first_Response_minimum
    - resolution_metrics.date_week
    fill_fields:
    - resolution_metrics.date_week
    filters:
      resolution_metrics.date_month: NOT NULL
    sorts:
    - resolution_metrics.date_week desc
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
  - name: Full Resolution
    title: Full Resolution
    model: intercom
    explore: cont_ic_conversations_parts
    type: looker_line
    fields:
    - resolution_metrics.full_Resolution_average
    - resolution_metrics.full_Resolution_maximum
    - resolution_metrics.full_Resolution_median
    - resolution_metrics.full_Resolution_minimum
    - resolution_metrics.date_week
    fill_fields:
    - resolution_metrics.date_week
    filters:
      resolution_metrics.date_month: NOT NULL
    sorts:
    - resolution_metrics.date_week desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 7
    col: 0
    width: 12
    height: 7
  - name: Requester Wait Time
    title: Requester Wait Time
    model: intercom
    explore: cont_ic_conversations_parts
    type: looker_line
    fields:
    - cont_ic_conversations.created_at_month
    - req_wait_time.average_requester_wait_time
    - req_wait_time.maximum_requester_wait_time
    - req_wait_time.median_requester_wait_time
    - req_wait_time.minimum_requester_wait_time
    fill_fields:
    - cont_ic_conversations.created_at_month
    sorts:
    - cont_ic_conversations.created_at_month desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    row: 7
    col: 12
    width: 12
    height: 7
