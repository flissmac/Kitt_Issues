view: awsdms_changesa48f865a5db0c824 {
  sql_table_name: public.awsdms_changesa48f865a5db0c824 ;;

  dimension: col1 {
    type: string
    sql: ${TABLE}.col1 ;;
  }

  dimension: col2 {
    type: string
    sql: ${TABLE}.col2 ;;
  }

  dimension: col3 {
    type: string
    sql: ${TABLE}.col3 ;;
  }

  dimension: col4 {
    type: string
    sql: ${TABLE}.col4 ;;
  }

  dimension: col5 {
    type: string
    sql: ${TABLE}.col5 ;;
  }

  dimension: seg1 {
    type: string
    sql: ${TABLE}.seg1 ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}.seq ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
