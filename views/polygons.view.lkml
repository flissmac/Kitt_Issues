view: polygons {
  sql_table_name: public.polygons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: center_point {
    type: string
    sql: ${TABLE}.center_point ;;
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

  dimension: ne_bound_point {
    type: string
    sql: ${TABLE}.ne_bound_point ;;
  }

  dimension: polygon {
    type: string
    sql: ${TABLE}.polygon ;;
  }

  dimension: sw_bound_point {
    type: string
    sql: ${TABLE}.sw_bound_point ;;
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
    drill_fields: [id, boundary_map.count]
  }
}
