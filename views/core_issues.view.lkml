view: core_issues {
  sql_table_name: public.core_issues ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: action_completion {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.action_completion_date ;;
  }

  dimension: action_completion_status {
    type: number
    sql: ${TABLE}.action_completion_status ;;
  }

  dimension_group: action_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.action_created_at ;;
  }

  dimension_group: action_due {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.action_due_date ;;
  }

  dimension: action_text {
    type: string
    sql: ${TABLE}.action_text ;;
  }

  dimension: action_title {
    type: string
    sql: ${TABLE}.action_title ;;
  }

  dimension: assignee {
    type: string
    sql: ${TABLE}.assignee ;;
  }

  dimension: assignee_company {
    type: string
    sql: ${TABLE}.assignee_company ;;
  }

  dimension: assignee_user_id {
    type: string
    sql: ${TABLE}.assignee_user_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension_group: closed_timestamp {
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
    sql: ${TABLE}.closed_timestamp ;;
  }

  dimension: contractor_company_id {
    type: string
    sql: ${TABLE}.contractor_company_id ;;
  }

  dimension_group: created_at {
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

  dimension: created_by_user_id {
    type: string
    sql: ${TABLE}.created_by_user_id ;;
  }

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: creator_company {
    type: string
    sql: ${TABLE}.creator_company ;;
  }

  dimension: csm_owner {
    type: string
    sql: ${TABLE}.csm_owner ;;
  }

  dimension: css_owner {
    type: string
    sql: ${TABLE}.css_owner ;;
  }

  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
  }

  dimension: display_id {
    type: string
    sql: ${TABLE}.display_id ;;
  }

  dimension_group: due_date {
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
    sql: ${TABLE}.due_date ;;
  }

  dimension: issue_update_id {
    type: string
    sql: ${TABLE}.issue_update_id ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: num_of_sla_days {
    type: number
    sql: ${TABLE}.num_of_sla_days ;;
  }

  dimension: previous_status {
    type: string
    sql: ${TABLE}.previous_status ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: status_enter {
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
    sql: ${TABLE}.status_enter_time ;;
  }

  dimension: subject_company_id {
    type: string
    sql: ${TABLE}.subject_company_id ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: task_assignee {
    type: string
    sql: ${TABLE}.task_assignee ;;
  }

  dimension: task_assignee_company {
    type: string
    sql: ${TABLE}.task_assignee_company ;;
  }

  dimension: tenant_company {
    type: string
    sql: ${TABLE}.tenant_company ;;
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
    drill_fields: [id, name]
  }
}
