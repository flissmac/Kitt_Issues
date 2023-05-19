view: xero_invoices {
  sql_table_name: public.xero_invoices ;;

  dimension: _sdc_level_0_id {
    type: number
    sql: ${TABLE}._sdc_level_0_id ;;
  }

  dimension: _sdc_level_1_id {
    type: number
    sql: ${TABLE}._sdc_level_1_id ;;
  }

  dimension: _sdc_source_key_invoiceid {
    type: string
    sql: ${TABLE}._sdc_source_key_invoiceid ;;
  }

  dimension: accountcode {
    type: string
    sql: ${TABLE}.accountcode ;;
  }

  dimension: amountcredited {
    type: number
    sql: ${TABLE}.amountcredited ;;
  }

  dimension: amountpaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amountpaid ;;
  }

  dimension: column {
    type: string
    sql: ${TABLE}."?column?" ;;
  }

  dimension: contact__name {
    type: string
    sql: ${TABLE}.contact__name ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: fullypaidondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fullypaidondate ;;
  }

  dimension: invoiceid {
    type: string
    sql: ${TABLE}.invoiceid ;;
  }

  dimension: lineamount {
    type: number
    sql: ${TABLE}.lineamount ;;
  }

  dimension: lineamounttypes {
    type: string
    sql: ${TABLE}.lineamounttypes ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: option {
    type: string
    sql: ${TABLE}.option ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: taxamount {
    type: number
    sql: ${TABLE}.taxamount ;;
  }

  dimension: taxtype {
    type: string
    sql: ${TABLE}.taxtype ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: totaltax {
    type: number
    sql: ${TABLE}.totaltax ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [name, contact__name]
  }
}
