view: location_areas {
  sql_table_name: public.location_areas ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: boundary_id {
    type: string
    sql: ${TABLE}.boundary_id ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
