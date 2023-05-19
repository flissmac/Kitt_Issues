view: awsdms_history {
  sql_table_name: public.awsdms_history ;;

  dimension: server_name {
    type: string
    sql: ${TABLE}.server_name ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }

  dimension_group: timeslot {
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
    sql: ${TABLE}.timeslot ;;
  }

  dimension: timeslot_duration {
    type: number
    sql: ${TABLE}.timeslot_duration ;;
  }

  dimension: timeslot_latency {
    type: number
    sql: ${TABLE}.timeslot_latency ;;
  }

  dimension: timeslot_records {
    type: number
    sql: ${TABLE}.timeslot_records ;;
  }

  dimension: timeslot_type {
    type: string
    sql: ${TABLE}.timeslot_type ;;
  }

  dimension: timeslot_volume {
    type: number
    sql: ${TABLE}.timeslot_volume ;;
  }

  measure: count {
    type: count
    drill_fields: [server_name, task_name]
  }
}
