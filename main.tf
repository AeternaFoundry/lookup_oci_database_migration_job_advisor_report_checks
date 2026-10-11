data "oci_database_migration_job_advisor_report_checks" "database_migration_job_advisor_report_checks_lookup" {
  for_each = var.database_migration_job_advisor_report_checks_lookup

  job_id = each.value.job_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

