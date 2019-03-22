connection: "postgres"

# include all the views
include: "*.view"

datagroup: ecommerce_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ecommerce_default_datagroup

explore: categories {}

explore: cities {}

explore: countries {}

explore: customer_services {}

explore: financial {}

explore: ga_sessions {}

explore: ga_users {}

explore: merchants {}

explore: order_items {
  join: products {
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: merchants {
    type: left_outer
    sql_on: ${products.merchant_id} = ${merchants.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: products {
  join: merchants {
    type: left_outer
    sql_on: ${products.merchant_id} = ${merchants.id} ;;
    relationship: many_to_one
  }
}

explore: sample_words {}

explore: users {}
