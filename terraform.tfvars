######################################
###  Variables for Storage bucket  ###
######################################

name                        = "test-saurav-24800"
location                    = "US"
force_destroy               = true
uniform_bucket_level_access = true
bucket_storage_class        = "STANDARD"
default_event_based_hold    = null
requester_pays              = null
public_access_prevention    = "enforced"
labels = {
  environment = "dev"
}

######################################
###    Variables for versioning    ###
######################################

enabled = true

######################################
###       Variables for cors       ###
######################################

origin          = ["http://image-store.com"]
method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
response_header = ["*"]
max_age_seconds = 3600

######################################
###    Variables for lifecycle     ###
######################################

age                        = 3
created_before             = null
with_state                 = null
matches_storage_class      = null
matches_prefix             = null
matches_suffix             = null
num_newer_versions         = null
custom_time_before         = null
days_since_custom_time     = null
days_since_noncurrent_time = null
noncurrent_time_before     = null
type                       = "Delete"


######################################
###   Optional Features variables  ###
######################################

is_locked            = null
retention_period     = null
log_bucket           = null
log_object_prefix    = null
default_kms_key_name = null
data_locations       = null
main_page_suffix     = null
not_found_page       = null


######################################
###  Variables for Storage object  ###
######################################

object_name = "I am an object"
source      = "./image.jpg"
content     = null
bucket      = "test-saurav-24800"
metadata = {
  foo  = "bar"
  fizz = "buzz"
  "13" = "42"
}
cache_control        = null
content_disposition  = null
content_encoding     = null
content_language     = null
content_type         = null
event_based_hold     = null
temporary_hold       = null
detect_md5hash       = null
object_storage_class = null
kms_key_name         = null
encryption_algorithm = null
encryption_key       = null
