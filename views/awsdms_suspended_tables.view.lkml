view: awsdms_suspended_tables {
  sql_table_name: public.awsdms_suspended_tables ;;

  dimension: server_name {
    type: string
    sql: ${TABLE}.server_name ;;
  }

  dimension: suspend_reason {
    type: string
    sql: ${TABLE}.suspend_reason ;;
  }

  dimension_group: suspend_timestamp {
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
    sql: ${TABLE}.suspend_timestamp ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: table_owner {
    type: string
    sql: ${TABLE}.table_owner ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.task_name ;;
  }

  measure: count {
    type: count
    drill_fields: [server_name, task_name, table_name]
  }
}
