resource "google_storage_bucket" "static-site" {
  name                        = var.name
  location                    = var.location
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
  storage_class               = var.bucket_storage_class
  default_event_based_hold    = var.default_event_based_hold
  requester_pays              = var.requester_pays
  public_access_prevention    = var.public_access_prevention
  labels = var.labels

  versioning {
    enabled = var.enabled
  }
  cors {
    origin          = var.origin
    method          = var.method
    response_header = var.response_header
    max_age_seconds = var.max_age_seconds
  }
  lifecycle_rule {
    condition {
      age                        = var.age
      created_before             = var.created_before
      with_state                 = var.with_state
      matches_storage_class      = var.matches_storage_class
      matches_prefix             = var.matches_prefix
      matches_suffix             = var.matches_suffix
      num_newer_versions         = var.num_newer_versions
      custom_time_before         = var.custom_time_before
      days_since_custom_time     = var.days_since_custom_time
      days_since_noncurrent_time = var.days_since_noncurrent_time
      noncurrent_time_before     = var.noncurrent_time_before

    }
    action {
      type          = var.type
      storage_class = var.storage_class
    }
  }

  ##Uncomment to use Optional Features##
  #   retention_policy {
  #     is_locked = var.is_locked
  #     retention_period = var.retention_period
  #   }

  # logging {
  #   log_bucket = var.log_bucket
  #   log_object_prefix = var.log_object_prefix
  # }

  #   encryption {
  #     default_kms_key_name = var.default_kms_key_name
  #   }

  # custom_placement_config {
  #     data_locations = var.data_locations
  #   }

  # website {
  #   main_page_suffix = var.main_page_suffix
  #   not_found_page   = var.not_found_page
  # }
}
