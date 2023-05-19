view: core_issues_syn {
  sql_table_name: public.core_issues_syn ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension_group: due {
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

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject_company_id {
    type: string
    sql: ${TABLE}.subject_company_id ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
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
