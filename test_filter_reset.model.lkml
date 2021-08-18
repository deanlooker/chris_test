connection: "the_look"

view: orders {
  sql_table_name:  demo_db.orders ;;
  dimension: status {
    suggest_explore: orders2
    suggest_dimension: orders2.status
  }
}

view: orders2 {
  sql_table_name: demo_db.orders ;;
  dimension: status {}
}

explore: orders {}

explore: orders2 {}
