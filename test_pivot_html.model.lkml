connection: "snowflake"

view: orders {
  sql_table_name: looker_test.orders ;;
  dimension: status {}
  dimension: test_html {
    sql:  ${status} ;;
    html: original;;
  }
  measure: count {
    type: count
  }
}

explore: orders {}
