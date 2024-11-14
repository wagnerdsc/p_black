---
- dashboard: riachuelo_bf_23__por_hora
  title: Riachuelo BF 23 - Por Hora
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: YMjCtqGjTJkFbjDeu5KZBT
  elements:
  - title: Sessions
    name: Sessions
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [events.total_unique_sessions]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
    custom_color: "#FFF"
    single_value_title: SESSÕES
    value_format: ''
    comparison_label: First Visit Sessions
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#fcb900",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Quantidade de sessões únicas, baseada no filtro
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Users
    name: Users
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [events.total_usuarios_unicos]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#FFF"
    single_value_title: USUÁRIOS
    comparison_label: Returning Users
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#00d084",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 13
    col: 0
    width: 6
    height: 2
  - title: Page Views
    name: Page Views
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [events.total_transactions]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ecommerce_transaction_id
      based_on: events.ecommerce__transaction_id
      expression: ''
      label: Count of Ecommerce Transaction ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    single_value_title: TRANSAÇÕES
    comparison_label: Unique Page Views
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000000",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      events.total_page_views: "#EA4335"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 2
    col: 0
    width: 6
    height: 2
  - title: PRODUTOS MAIS COMPRADOS
    name: PRODUTOS MAIS COMPRADOS
    model: ga4_realtime
    explore: sessions
    type: looker_grid
    fields: [event_data_items.item_name, sum_of_quantity, sum_of_item_revenue, event_data_items.item_id]
    filters:
      events.event_name: purchase
    sorts: [sum_of_quantity desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_ecommerce_total_item_quantity
      based_on: events.ecommerce__total_item_quantity
      expression: ''
      label: Sum of Ecommerce Total Item Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_quantity
      based_on: event_data_items.quantity
      expression: ''
      label: Sum of Quantity
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_item_revenue
      based_on: event_data_items.item_revenue
      expression: ''
      label: Sum of Item Revenue
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: median_of_price
      based_on: event_data_items.price
      expression: ''
      label: Median of Price
      type: median
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '1'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      events.total_purchase_revenue: Receita
      sum_of_quantity: Qtde
      event_data_items.item_id: Material
    series_cell_visualizations:
      events.total_item_quantity:
        is_active: true
      events.total_purchase_revenue:
        is_active: true
      sum_of_quantity:
        is_active: true
      sum_of_item_revenue:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '100'
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sessions.total_sessions: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#FFF"
    single_value_title: Sessions
    comparison_label: First Visit Sessions
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Sessions based on filters
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 27
    col: 13
    width: 11
    height: 10
  - title: PRODUTOS MAIS VISITADOS
    name: PRODUTOS MAIS VISITADOS
    model: ga4_realtime
    explore: sessions
    type: looker_grid
    fields: [event_data_items.item_name, sessions.qtde_sessoes, event_data_items.item_id]
    sorts: [sessions.qtde_sessoes desc 0]
    limit: 500
    column_limit: 50
    filter_expression: matches_filter(${event_data_items.item_name}, `-NULL`) AND
      matches_filter(${events.event_name}, `"view_item"`) AND matches_filter(${event_data_items.item_name},
      `-(not set)`)
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      event_data_items.item_name: Material
    series_cell_visualizations:
      sessions.qtde_sessoes:
        is_active: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: sessions.qtde_sessoes,
            id: sessions.qtde_sessoes, name: Qtde Sessoes}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      sessions.qtde_sessoes: "#00d084"
    column_spacing_ratio: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    custom_color: "#FFF"
    single_value_title: Total Users
    comparison_label: Returning Users
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 15
    col: 13
    width: 11
    height: 12
  - title: SESSÃO POR DISPOSITIVO
    name: SESSÃO POR DISPOSITIVO
    model: ga4_realtime
    explore: sessions
    type: looker_column
    fields: [sessions.qtde_sessoes, events.platform_trat]
    sorts: [sessions.qtde_sessoes desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - args:
      - sessions.qtde_sessoes
      calculation_type: percent_of_column_sum
      category: table_calculation
      based_on: sessions.qtde_sessoes
      label: Percent of Sessions Qtde Sessoes
      source_field: sessions.qtde_sessoes
      table_calculation: percent_of_sessions_qtde_sessoes
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: percent_of_sessions_qtde_sessoes,
            id: percent_of_sessions_qtde_sessoes, name: Percent of Sessions Qtde Sessoes}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      events.total_page_views: "#EA4335"
      sessions.qtde_sessoes: "#fcb900"
      percent_of_sessions_qtde_sessoes: "#F9AB00"
    column_spacing_ratio: 0.2
    show_dropoff: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    comparison_label: Unique Page Views
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#c73727",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: [sessions.qtde_sessoes]
    hidden_pivots: {}
    listen:
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 27
    col: 0
    width: 13
    height: 10
  - title: Page Views (Copy)
    name: Page Views (Copy)
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [events.total_purchase_revenue]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ecommerce_transaction_id
      based_on: events.ecommerce__transaction_id
      expression: ''
      label: Count of Ecommerce Transaction ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    single_value_title: RECEITA CAPTADA
    comparison_label: Unique Page Views
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0693e3",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      events.total_page_views: "#EA4335"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 6
    col: 0
    width: 6
    height: 4
  - title: FUNIL DE CONVERSÃO
    name: FUNIL DE CONVERSÃO
    model: ga4_realtime
    explore: sessions
    type: looker_funnel
    fields: [sessoes, sessoes_pdp, sessoes_adicao_ao_carrinho, sessoes_modo_de_envio,
      sessoes_metodo_de_pagamento, transacoes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Sessões - PDP
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_pdp
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"view_item"'
    - category: measure
      label: Sessões - Adição ao carrinho
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_adicao_ao_carrinho
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"add_to_cart"'
    - category: measure
      label: Sessões - Modo de envio
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_modo_de_envio
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"add_shipping_info"'
    - category: measure
      label: Sessões - Método de pagamento
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_metodo_de_pagamento
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"add_payment_info"'
    - category: measure
      label: Sessões
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes
      type: count_distinct
      _type_hint: number
    - category: measure
      expression: ''
      label: Transações
      based_on: events.ecommerce__transaction_id
      _kind_hint: measure
      measure: transacoes
      type: count_distinct
      _type_hint: number
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: true
    orientation: automatic
    labelPosition: left
    percentType: prior
    percentPosition: right
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      custom:
        id: 40e2452e-edca-e6b1-834e-4e5cb0f26dbc
        label: Custom
        type: discrete
        colors:
        - "#000000"
        - "#FF0000"
        - "#08B248"
        - "#CF2E2E"
        - "#00d084"
        - "#FCB900"
      options:
        steps: 5
        reverse: true
    isStepped: true
    labelScale: '1'
    labelOverlap: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 15
    col: 0
    width: 13
    height: 12
  - title: Users (Copy)
    name: Users (Copy)
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [events.taxa_conversao]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    custom_color: "#FFF"
    single_value_title: TAXA DE CONVERSÃO
    value_format: 0.00%
    comparison_label: Returning Users
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#ff6900",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Page Views (Copy 2)
    name: Page Views (Copy 2)
    model: ga4_realtime
    explore: sessions
    type: single_value
    fields: [event_open_cart.carrinho_aberto]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ecommerce_transaction_id
      based_on: events.ecommerce__transaction_id
      expression: ''
      label: Count of Ecommerce Transaction ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - category: measure
      label: Filtered sessions.qtde_sessoes
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: filtered_sessionsqtde_sessoes
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"add_to_cart"'
        events.ecommerce__transaction_id: 'NULL'
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    single_value_title: CARRINHOS EM ABERTO
    comparison_label: Unique Page Views
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#CF2E2E",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      events.total_page_views: "#EA4335"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    hidden_pivots: {}
    listen:
      Platforma: events.platform_trat
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 10
    col: 0
    width: 6
    height: 3
  - title: SESSÕES POR HORA
    name: SESSÕES POR HORA
    model: ga4_realtime
    explore: sessions
    type: looker_column
    fields: [events.event_time_tz_sp_hour, sessions.qtde_sessoes, events.taxa_conversao,
      events.total_transactions]
    fill_fields: [events.event_time_tz_sp_hour]
    sorts: [events.event_time_tz_sp_hour]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Sessões (Session Start)
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_session_start
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"session_start"'
    filter_expression: matches_filter(${events.event_time_hour}, `this day`) AND matches_filter(${events.event_time_hour},
      `24 hour`) AND matches_filter(${events.event_time_tz_sp_time}, `this day`)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: dd65790b-921e-4ac9-b82c-0feeccca91cd
        label: Custom
        type: discrete
        colors:
        - "#fcb900"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD952"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
        reverse: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: sessions.qtde_sessoes,
            id: sessions.qtde_sessoes, name: Qtde Sessoes}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: custom, tickDensityCustom: 13, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: events.total_transactions,
            id: events.total_transactions, name: Transactions}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 13,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: events.taxa_conversao,
            id: events.taxa_conversao, name: Taxa de Conversão}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '0'
    hide_legend: false
    label_value_format: ''
    series_types:
      events.taxa_conversao: line
    series_colors:
      sessoes_session_start: "#fcb900"
      events.total_usuarios_unicos: "#00d084"
      events.taxa_conversao: "#ff6900"
      events.total_transactions: "#000"
      sessions.qtde_sessoes: "#fcb900"
    label_color: []
    show_dropoff: false
    show_null_points: false
    interpolation: monotone
    swap_axes: false
    discontinuous_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 0
    col: 6
    width: 18
    height: 6
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: ga4_realtime
    explore: sessions
    type: looker_column
    fields: [events.total_purchase_revenue, events.event_time_tz_sp_hour]
    fill_fields: [events.event_time_tz_sp_hour]
    sorts: [events.event_time_tz_sp_hour desc]
    limit: 500
    column_limit: 50
    filter_expression: matches_filter(${events.event_time_tz_sp_time}, `24 hour`)
      AND matches_filter(${events.event_time_tz_sp_time}, `this day`)
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: dd65790b-921e-4ac9-b82c-0feeccca91cd
        label: Custom
        type: discrete
        colors:
        - "#fcb900"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD952"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: events.total_purchase_revenue,
            id: events.total_purchase_revenue, name: Purchase Revenue}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 13,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: events.total_transactions,
            id: events.total_transactions, name: Transactions}], showLabels: false,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '3'
    hide_legend: false
    series_colors:
      events.total_transactions: "#000"
      events.total_purchase_revenue: "#0693e3"
    label_color: ["#000"]
    label_rotation:
    show_null_points: false
    interpolation: monotone
    swap_axes: false
    discontinuous_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    title_hidden: true
    listen:
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 6
    col: 6
    width: 18
    height: 4
  - title: Untitled (Copy 0)
    name: Untitled (Copy 0)
    model: ga4_realtime
    explore: sessions
    type: looker_column
    fields: [events.event_time_tz_sp_hour, event_open_cart.carrinho_aberto]
    fill_fields: [events.event_time_tz_sp_hour]
    sorts: [events.event_time_tz_sp_hour desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      label: Sessões (Session Start)
      based_on: sessions.qtde_sessoes
      _kind_hint: measure
      measure: sessoes_session_start
      type: count_distinct
      _type_hint: number
      filters:
        events.event_name: '"session_start"'
    filter_expression: matches_filter(${events.event_time_tz_sp_time}, `24 hours`)
      AND matches_filter(${events.event_time_tz_sp_time}, `this day`)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: dd65790b-921e-4ac9-b82c-0feeccca91cd
        label: Custom
        type: discrete
        colors:
        - "#fcb900"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD952"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: event_open_cart.carrinho_aberto,
            id: event_open_cart.carrinho_aberto, name: Carrinhos em Aberto}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: false
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '3'
    hide_legend: false
    label_value_format: ''
    series_colors:
      sessoes_session_start: "#fcb900"
      events.total_usuarios_unicos: "#00d084"
      event_open_cart.carrinho_aberto: "#CF2E2E"
    label_color: ["#"]
    show_null_points: false
    interpolation: monotone
    swap_axes: false
    discontinuous_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    title_hidden: true
    listen:
      Event Time TZ-BR Time: events.event_time_tz_sp_time
    row: 10
    col: 6
    width: 18
    height: 5
  filters:
  - name: Event Time TZ-BR Time
    title: Event Time TZ-BR Time
    type: field_filter
    default_value: this day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: ga4_realtime
    explore: sessions
    listens_to_filters: []
    field: events.event_time_tz_sp_time
  - name: Platforma
    title: Platforma
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: ga4_realtime
    explore: sessions
    listens_to_filters: []
    field: events.platform_trat
