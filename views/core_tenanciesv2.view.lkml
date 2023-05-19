view: core_tenanciesv2 {
  sql_table_name: public.core_tenanciesv2 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: breaks {
    type: string
    sql: ${TABLE}.breaks ;;
  }

  dimension: building_name {
    type: string
    sql: ${TABLE}.building_name ;;
  }

  dimension_group: commercials_agreed {
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
    sql: ${TABLE}.commercials_agreed_at ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
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

  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }

  dimension: decline_reason {
    type: string
    sql: ${TABLE}.decline_reason ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: exercised {
    type: number
    sql: ${TABLE}.exercised ;;
  }

  dimension_group: heads_of_terms_agreed {
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
    sql: ${TABLE}.heads_of_terms_agreed_at ;;
  }

  dimension_group: lease_agreed {
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
    sql: ${TABLE}.lease_agreed_at ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: occupancy {
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
    sql: ${TABLE}.occupancy_at ;;
  }

  dimension: options {
    type: string
    sql: ${TABLE}.options ;;
  }

  dimension: renewal_type {
    type: number
    sql: ${TABLE}.renewal_type ;;
  }

  dimension: sqft {
    type: number
    sql: ${TABLE}.sqft ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: terms_revised {
    type: number
    sql: ${TABLE}.terms_revised ;;
  }

  dimension: unit_ids {
    type: string
    sql: ${TABLE}.unit_ids ;;
  }

  dimension: unit_names {
    type: string
    sql: ${TABLE}.unit_names ;;
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
    drill_fields: [id, name, building_name]
  }
}
