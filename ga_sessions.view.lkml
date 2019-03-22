view: ga_sessions {
  sql_table_name: ecommerce.ga_sessions ;;

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

  dimension: date_seed {
    type: number
    sql: ${TABLE}.date_seed ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
