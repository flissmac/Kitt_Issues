view: awsdms_status {
  sql_table_name: public.awsdms_status ;;

  dimension: disk_swap_size {
    type: number
    sql: ${TABLE}.disk_swap_size ;;
  }

  dimension: pending_changes {
    type: number
    sql: ${TABLE}.pending_changes ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}.server_name ;;
  }

  dimension: source_current_position {
    type: string
    sql: ${TABLE}.source_current_position ;;
  }

  dimension_group: source_current_timestamp {
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
    sql: ${TABLE}.source_current_timestamp ;;
  }

  dimension: source_tail_position {
    type: string
    sql: ${TABLE}.source_tail_position ;;
  }

  dimension_group: source_tail_timestamp {
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
    sql: ${TABLE}.source_tail_timestamp ;;
  }

  dimension_group: source_timestamp_applied {
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
    sql: ${TABLE}.source_timestamp_applied ;;
  }

  dimension_group: status {
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
    sql: ${TABLE}.status_time ;;
  }

  dimension: task_memory {
    type: number
    sql: ${TABLE}.task_memory ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }

  dimension: task_status {
    type: string
    sql: ${TABLE}.task_status ;;
  }

  measure: count {
    type: count
    drill_fields: [server_name, task_name]
  }
}
