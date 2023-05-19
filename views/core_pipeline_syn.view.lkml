view: core_pipeline_syn {
  sql_table_name: public.core_pipeline_syn ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: area_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.area_ids ;;
  }

  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: broker_company {
    type: string
    sql: ${TABLE}.broker_company ;;
  }

  dimension: broker_company_id {
    type: string
    sql: ${TABLE}.broker_company_id ;;
  }

  dimension: broker_name {
    type: string
    sql: ${TABLE}.broker_name ;;
  }

  dimension: broker_search_id {
    type: string
    sql: ${TABLE}.broker_search_id ;;
  }

  dimension: client_company_id {
    type: string
    sql: ${TABLE}.client_company_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }

  dimension: current_label {
    type: string
    sql: ${TABLE}.current_label ;;
  }

  dimension: current_pipeline_stage {
    type: number
    sql: ${TABLE}.current_pipeline_stage ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: heat {
    type: number
    sql: ${TABLE}.heat ;;
  }

  dimension: lost_reason {
    type: string
    sql: ${TABLE}.lost_reason ;;
  }

  dimension: monthly_budget_from_pennies {
    type: number
    sql: ${TABLE}.monthly_budget_from_pennies ;;
  }

  dimension: monthly_budget_to_pennies {
    type: number
    sql: ${TABLE}.monthly_budget_to_pennies ;;
  }

  dimension: num_of_desks_from {
    type: number
    sql: ${TABLE}.num_of_desks_from ;;
  }

  dimension: num_of_desks_to {
    type: number
    sql: ${TABLE}.num_of_desks_to ;;
  }

  dimension: num_of_large_meeting_rooms {
    type: number
    sql: ${TABLE}.num_of_large_meeting_rooms ;;
  }

  dimension: num_of_medium_meeting_rooms {
    type: number
    sql: ${TABLE}.num_of_medium_meeting_rooms ;;
  }

  dimension: num_of_small_meeting_rooms {
    type: number
    sql: ${TABLE}.num_of_small_meeting_rooms ;;
  }

  dimension: primary_broker_contact_id {
    type: string
    sql: ${TABLE}.primary_broker_contact_id ;;
  }

  dimension: sales_team {
    type: string
    sql: ${TABLE}.sales_team ;;
  }

  dimension: square_footage_from {
    type: number
    sql: ${TABLE}.square_footage_from ;;
  }

  dimension: square_footage_to {
    type: number
    sql: ${TABLE}.square_footage_to ;;
  }

  dimension: start_date_asap {
    type: number
    sql: ${TABLE}.start_date_asap ;;
  }

  dimension_group: start_date_from {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date_from ;;
  }

  dimension_group: start_date_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date_to ;;
  }

  dimension: term_months_from {
    type: number
    sql: ${TABLE}.term_months_from ;;
  }

  dimension: term_months_to {
    type: number
    sql: ${TABLE}.term_months_to ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, broker_name, areas.id, areas.name]
  }
}
