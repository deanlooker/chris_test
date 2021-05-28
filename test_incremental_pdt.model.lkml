connection: "the_look"

view: orders {
  derived_table: {
    sql: SELECT * FROM demo_db.orders ;;
    sql_trigger_value: SELECT 1 ;;
  }
  dimension: status {}
  dimension: created_at {
    type: date
  }
}

explore: orders {}

view: orders_incremental {
  derived_table: {
    sql: SELECT * FROM demo_db.orders WHERE {% incrementcondition %} created_at {% endincrementcondition %};;
    sql_trigger_value: SELECT 1 ;;
    increment_key: "created_at"
  }
  dimension: status {}
  dimension: created_at {
    type: date
  }
}

explore: orders_incremental {}
