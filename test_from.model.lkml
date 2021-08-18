connection: "the_look"

view: orders {
  sql_table_name:  demo_db.orders ;;
  dimension: status {}
}

explore: orders2 {
  from: orders
}
