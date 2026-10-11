variable "database_migration_job_advisor_report_checks_lookup" {
  description = <<EOT
Map of database_migration_job_advisor_report_checks_lookup, attributes below
Required:
    - job_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    job_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

