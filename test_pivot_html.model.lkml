connection: "the_look"

view: orders {
  sql_table_name: demo_db.orders ;;
  dimension: status {}
  dimension: test_html {
    sql:  ${status} ;;
    html:
    {% if value == 'cancelled' %}
    <p style="color: white; background-color: blue; font-size:100%">{{ rendered_value }}</p>
    {% else %}
    <p style="color: white; background-color: red; font-size:100%">{{ rendered_value }}</p>
    {% endif %};;
  }
  measure: count {
    type: count
  }
}

explore: orders {}
