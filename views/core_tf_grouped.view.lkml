view: core_tf_grouped {
  sql_table_name: public.core_tf_grouped ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: kf_avg {
    type: number
    sql: ${TABLE}.kf_avg ;;
  }

  dimension: kf_current {
    type: number
    sql: ${TABLE}.kf_current ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: won_current {
    type: string
    sql: ${TABLE}.won_current ;;
  }

  dimension: wonlost_avg {
    type: string
    sql: ${TABLE}.wonlost_avg ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
