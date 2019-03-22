view: countries {
  sql_table_name: ecommerce.countries ;;

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name, continent_name]
  }
}
