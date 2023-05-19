connection: "kitt"

# include all the views
include: "/views/**/*.view"

datagroup: kitt_issues_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kitt_issues_default_datagroup

explore: events {}

explore: core_chats {}

explore: core_users {}

explore: core_locations {}

explore: core_units {}

explore: core_companies {}

explore: core_issues {}

explore: core_tenancies {}

explore: core_tf_grouped {}

explore: core_issues_syn {}

explore: core_tenanciesv2 {}
