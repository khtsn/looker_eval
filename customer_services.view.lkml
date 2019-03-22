view: customer_services {
  sql_table_name: ecommerce.customer_services ;;

  dimension_group: completed {
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
    sql: ${TABLE}.completed_at ;;
  }

  dimension: completed_hours {
    type: number
    sql: ${TABLE}.completed_hours ;;
  }

  dimension_group: first_response {
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
    sql: ${TABLE}.first_response_at ;;
  }

  dimension: first_response_hour {
    type: number
    sql: ${TABLE}.first_response_hour ;;
  }

  dimension: receive_date_seed {
    type: number
    sql: ${TABLE}.receive_date_seed ;;
  }

  dimension: receive_hours {
    type: number
    sql: ${TABLE}.receive_hours ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_at ;;
  }

  dimension: request_status {
    type: string
    sql: ${TABLE}.request_status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
