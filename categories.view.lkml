view: categories {
  sql_table_name: ecommerce.categories ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: max_price {
    type: number
    sql: ${TABLE}.max_price ;;
  }

  dimension: min_price {
    type: number
    sql: ${TABLE}.min_price ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
