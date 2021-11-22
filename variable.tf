variable "sql_cloud_run_name" {

  description = "Name must be unique within a namespace, within a Cloud Run region. Is required when creating resources. Name is primarily intended for creation idempotence and configuration definition."
  type        = string
  default     = ""
}

variable "sql_cloud_run_location" {

  description = "The location of the cloud run instance. eg us-central1"
  type        = string
  default     = ""
}

