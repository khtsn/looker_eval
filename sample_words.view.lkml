view: sample_words {
  sql_table_name: ecommerce.sample_words ;;

  dimension: words {
    type: string
    sql: ${TABLE}.words ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
