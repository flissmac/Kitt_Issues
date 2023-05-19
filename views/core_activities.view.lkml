view: core_activities {
  sql_table_name: public.core_activities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: activity_title {
    type: string
    sql: ${TABLE}.activity_title ;;
  }

  dimension: activity_type {
    type: string
    sql: ${TABLE}.activity_type ;;
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

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
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

  dimension_group: deal_created {
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
    sql: ${TABLE}.deal_created ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_title {
    type: string
    sql: ${TABLE}.deal_title ;;
  }

  dimension: direct_yn {
    type: number
    sql: ${TABLE}.direct_yn ;;
  }

  dimension: due_date {
    type: string
    sql: ${TABLE}.due_date ;;
  }

  dimension: due_time {
    type: string
    sql: ${TABLE}.due_time ;;
  }

  dimension: primary_broker_contact_id {
    type: string
    sql: ${TABLE}.primary_broker_contact_id ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: type_id {
    type: string
    sql: ${TABLE}.type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, broker_name]
  }
}
