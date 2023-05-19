view: core_chats {
  sql_table_name: public.core_chats ;;

  dimension_group: chat_created {
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
    sql: ${TABLE}.chat_created ;;
  }

  dimension: chat_creator {
    type: string
    sql: ${TABLE}.chat_creator ;;
  }

  dimension: chat_creator_company {
    type: string
    sql: ${TABLE}.chat_creator_company ;;
  }

  dimension_group: chat_deleted {
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
    sql: ${TABLE}.chat_deleted ;;
  }

  dimension: chat_id {
    type: string
    sql: ${TABLE}.chat_id ;;
  }

  dimension_group: chat_message_created {
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
    sql: ${TABLE}.chat_message_created ;;
  }

  dimension_group: chat_message_deleted {
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
    sql: ${TABLE}.chat_message_deleted ;;
  }

  dimension: chat_responder {
    type: string
    sql: ${TABLE}.chat_responder ;;
  }

  dimension: chat_responder_company {
    type: string
    sql: ${TABLE}.chat_responder_company ;;
  }

  dimension: chat_type {
    type: number
    sql: ${TABLE}.chat_type ;;
  }

  dimension_group: chat_updated {
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
    sql: ${TABLE}.chat_updated ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
