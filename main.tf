#######################################
##      Storage (str) :: Bucket      ##
#######################################

module "folder2" {
  source = "./cloud_storage"

  name                        = var.name
  location                    = var.location
  bucket_storage_class        = var.bucket_storage_class
  default_event_based_hold    = var.default_event_based_hold
  requester_pays              = var.requester_pays
  public_access_prevention    = var.public_access_prevention
  labels                      = var.labels
  origin                      = var.origin
  method                      = var.method
  response_header             = var.response_header
  max_age_seconds             = var.max_age_seconds
  created_before              = var.created_before
  with_state                  = var.with_state
  matches_storage_class       = var.matches_storage_class
  matches_prefix              = var.matches_prefix
  matches_suffix              = var.matches_suffix
  num_newer_versions          = var.num_newer_versions
  custom_time_before          = var.custom_time_before
  days_since_custom_time      = var.days_since_custom_time
  days_since_noncurrent_time  = var.days_since_noncurrent_time
  noncurrent_time_before      = var.noncurrent_time_before
  type                        = var.type
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = var.uniform_bucket_level_access
  enabled                     = var.enabled
  age                         = var.age
  is_locked                   = var.is_locked
  retention_period            = var.retention_period
  log_bucket                  = var.log_bucket
  log_object_prefix           = var.log_object_prefix
  default_kms_key_name        = var.default_kms_key_name
  data_locations              = var.data_locations
  main_page_suffix            = var.main_page_suffix
  not_found_page              = var.not_found_page
}

#######################################
##      Storage (str) :: Object      ##
#######################################

module "folder3" {
  source = "./cloud_storage_object"

  name                 = var.name
  object_source        = var.object_source
  content              = var.content
  bucket               = var.bucket
  metadata             = var.metadata
  cache_control        = var.cache_control
  content_disposition  = var.content_disposition
  content_encoding     = var.content_encoding
  content_language     = var.content_language
  content_type         = var.content_type
  event_based_hold     = var.event_based_hold
  temporary_hold       = var.temporary_hold
  detect_md5hash       = var.detect_md5hash
  object_storage_class = var.object_storage_class
  kms_key_name         = var.kms_key_name
  encryption_algorithm = var.encryption_algorithm
  encryption_key       = var.encryption_key

}
