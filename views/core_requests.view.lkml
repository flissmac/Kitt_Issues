view: core_requests {
  sql_table_name: public.core_requests ;;
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

  dimension: assignee_id {
    type: string
    sql: ${TABLE}.assignee_id ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: creator_company {
    type: string
    sql: ${TABLE}.creator_company ;;
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

  dimension: detail {
    type: string
    sql: ${TABLE}.detail ;;
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

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.summary ;;
  }

  dimension: unit_id {
    type: string
    sql: ${TABLE}.unit_id ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
