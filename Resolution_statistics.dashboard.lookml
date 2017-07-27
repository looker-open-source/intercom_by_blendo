- dashboard: resolution_statistics
  title: Resolution Statistics
  layout: tile
  tile_size: 100

  filters:

  elements:
  - name: add_a_unique_name_1498130911
    title: First Time Resolution by Month
    width: 12
    model: intercom
    explore: first_resolution
    type: looker_column
    fields: [first_resolution.maximum, first_resolution.minimum, first_resolution.median,
      first_resolution.average, first_resolution.date_month]
    fill_fields: [first_resolution.date_month]
    sorts: [first_resolution.date_month desc]
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
    show_null_points: true
    point_style: none
    interpolation: linear
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 9,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: first_resolution.maximum,
            name: First Resolution Maximum, __FILE: intercom/Resolution_statistics.dashboard.lookml,
            __LINE_NUM: 42}, {id: first_resolution.minimum, name: First Resolution Minimum,
            __FILE: intercom/Resolution_statistics.dashboard.lookml, __LINE_NUM: 43},
          {id: first_resolution.median, name: First Resolution Median, __FILE: intercom/Resolution_statistics.dashboard.lookml,
            __LINE_NUM: 44}, {id: first_resolution.average, name: First Resolution Average,
            __FILE: intercom/Resolution_statistics.dashboard.lookml, __LINE_NUM: 45}],
        __FILE: intercom/Resolution_statistics.dashboard.lookml, __LINE_NUM: 40}]
    series_types: {}
    column_spacing_ratio:
    show_dropoff: false
    hidden_series: []
    x_axis_reversed: true
    column_group_spacing_ratio:
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000", label: Average Maximum}]

  - name: add_a_unique_name_1497962384
    title: Requester Wait Time
    model: intercom
    explore: req_wait_time
    type: looker_column
    fields: [req_wait_time.maximum, req_wait_time.minimum, req_wait_time.med, req_wait_time.avg]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: req_wait_time.maximum,
            name: Req Wait Time Maximum}, {id: req_wait_time.minimum, name: Req Wait
              Time Minimum}, {id: req_wait_time.med, name: Req Wait Time Med}, {id: req_wait_time.avg,
            name: Req Wait Time Avg}]}]




  - name: add_a_unique_name_1497961800
    title: First Response
    model: intercom
    explore: first_response
    type: looker_column
    fields: [first_response.maximum, first_response.minimum, first_response.med, first_response.avg]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: first_response.maximum,
            name: First Response Maximum}, {id: first_response.minimum, name: First
              Response Minimum}, {id: first_response.med, name: First Response Med},
          {id: first_response.avg, name: First Response Avg}]}]


  - name: add_a_unique_name_1498131493
    title: Full Resolution by Month
    width: 12
    model: intercom
    explore: full_resolution
    type: looker_column
    fields: [full_resolution.date_month, full_resolution.maximum, full_resolution.minimum,
      full_resolution.avg, full_resolution.med]
    fill_fields: [full_resolution.date_month]
    sorts: [full_resolution.date_month desc]
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
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: full_resolution.maximum,
            name: Full Resolution Maximum}, {id: full_resolution.minimum, name: Full
              Resolution Minimum}, {id: full_resolution.avg, name: Full Resolution Avg},
          {id: full_resolution.med, name: Full Resolution Med}]}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    show_dropoff: false
    reference_lines: []


  - name: add_a_unique_name_1498132470
    title: Full Resolution Time by Day
    width: 18
    model: intercom
    explore: full_resolution
    type: looker_area
    fields: [full_resolution.maximum, full_resolution.minimum, full_resolution.avg,
      full_resolution.med, full_resolution.date_date]
    fill_fields: [full_resolution.date_date]
    sorts: [full_resolution.date_date desc]
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
    ordering: none
    show_null_labels: false
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: log, unpinAxis: false, valueFormat: !!null '', series: [{id: full_resolution.maximum,
            name: Full Resolution Maximum, __FILE: intercom/Resolution_statistics.dashboard.lookml,
            __LINE_NUM: 180}, {id: full_resolution.minimum, name: Full Resolution Minimum,
            __FILE: intercom/Resolution_statistics.dashboard.lookml, __LINE_NUM: 181},
          {id: full_resolution.avg, name: Full Resolution Avg, __FILE: intercom/Resolution_statistics.dashboard.lookml,
            __LINE_NUM: 182}, {id: full_resolution.med, name: Full Resolution Med, __FILE: intercom/Resolution_statistics.dashboard.lookml,
            __LINE_NUM: 183}], __FILE: intercom/Resolution_statistics.dashboard.lookml,
        __LINE_NUM: 178}]
    show_dropoff: false
    reference_lines: []
    series_types: {}
