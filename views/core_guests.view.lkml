view: core_guests {
  sql_table_name: public.core_guests ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: checked_in {
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
    sql: ${TABLE}.checked_in_at ;;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: guest_name {
    type: string
    sql: ${TABLE}.guest_name ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.location_name ;;
  }

  dimension: profile_name {
    type: string
    sql: ${TABLE}.profile_name ;;
  }

  dimension: requester_id {
    type: string
    sql: ${TABLE}.requester_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, guest_name, profile_name, location_name]
  }
}
