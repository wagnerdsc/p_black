include: "/views/*.view.lkml"
include: "/views/*/*.view.lkml"
include: "/attributes/*.lkml"

explore: sessions {
  label: "GA4 Sessions"
  description: "Explores Google Analytics sessions data."

  join: audience_cohorts {
    type: left_outer
    sql_on: ${sessions.audience_trait} = ${audience_cohorts.audience_trait} ;;
    relationship: many_to_one
  }

  join: events {
    view_label: "Events"
    sql: LEFT JOIN UNNEST(${sessions.event_data}) as events with offset as event_row ;;
    relationship: one_to_many
  }

  join: event_data_items {
    view_label: "Events"
    sql: LEFT JOIN UNNEST(${events.items}) as event_data_items  ;;
    relationship: one_to_many
    required_joins: [events]
  }

  join: user_previous_session {
    view_label: "GA4 Sessions"
    sql_on: ${sessions.sl_key} = ${user_previous_session.sl_key} ;;
    relationship: one_to_one
  }

  join: user_segment {
    type: left_outer
    sql_on: ${sessions.user_pseudo_id} = ${user_segment.user_pseudo_id} ;;
    relationship: many_to_one
  }

  join: event_open_cart {
    #view_label: "BQML"
    relationship: one_to_many
    sql_on: ${sessions.ga_session_id} = ${event_open_cart.ga_session_id}
    and ${sessions.user_pseudo_id} = ${event_open_cart.user_pseudo_id};;
  }
}
