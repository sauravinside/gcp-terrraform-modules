######################################
###  Variables for Storage bucket  ###
######################################

variable "name" {
  type        = string
  description = "The name of the bucket."
  default     = "test-saurav-24800"
}
variable "location" {
  type        = string
  description = "The GCS location."
  default     = "US"
}
variable "force_destroy" {
  type        = bool
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  default     = true
}
variable "uniform_bucket_level_access" {
  type        = bool
  description = "Enables Uniform bucket-level access access to a bucket"
  default     = true
}
variable "bucket_storage_class" {
  type        = string
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  default     = "STANDARD"
}
variable "default_event_based_hold" {
  type        = bool
  description = "Whether or not to automatically apply an eventBasedHold to new objects added to the bucket."
  default     = null
}
variable "requester_pays" {
  type        = bool
  description = "Enables Requester Pays on a storage bucket."
  default     = null
}
variable "public_access_prevention" {
  type        = string
  description = "Prevents public access to a bucket. Acceptable values are inherited or enforced"
  default     = "enforced"
}
variable "labels" {
  type        = map(any)
  description = "A map of key/value label pairs to assign to the bucket."
  default = {
    environment = "dev"
  }
}
######################################
###    Variables for versioning    ###
######################################

variable "enabled" {
  type        = bool
  description = "While set to true, versioning is fully enabled for this bucket."
  default     = true
}

######################################
###       Variables for cors       ###
######################################

variable "origin" {
  type        = list(string)
  description = "The list of Origins eligible to receive CORS response headers. Note: * is permitted in the list of origins, and means any Origin"
  default     = ["http://image-store.com"]
}
variable "method" {
  type        = list(string)
  description = "The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: * is permitted in the list of methods, and means any method"
  default     = ["GET", "HEAD", "PUT", "POST", "DELETE"]
}
variable "response_header" {
  type        = list(string)
  description = "The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains"
  default     = ["*"]
}
variable "max_age_seconds" {
  type        = number
  description = "The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses."
  default     = 3600
}

######################################
###    Variables for lifecycle     ###
######################################

variable "age" {
  type        = number
  description = "Minimum age of an object in days to satisfy this condition."
  default     = 3
}
variable "created_before" {
  type        = string
  description = "A date in YYYY-MM-DD. This condition is satisfied when an object is created before midnight of the specified date in UTC."
  default     = null
}
variable "with_state" {
  type        = string
  description = "Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: LIVE, ARCHIVED, ANY"
  default     = null
}
variable "matches_storage_class" {
  type        = list(string)
  description = "Storage Class of objects to satisfy this condition. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, DURABLE_REDUCED_AVAILABILITY"
  default     = null
}
variable "matches_prefix" {
  type        = list(string)
  description = "One or more matching name prefixes to satisfy this condition."
  default     = null
}
variable "matches_suffix" {
  type        = list(string)
  description = "One or more matching name suffixes to satisfy this condition."
  default     = null
}
variable "num_newer_versions" {
  type        = string
  description = "Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition."
  default     = null
}
variable "custom_time_before" {
  type        = string
  description = "A date in YYYY-MM-DD. This condition is satisfied when the customTime metadata for the object is set to an earlier date than the date used in this lifecycle condition."
  default     = null
}
variable "days_since_custom_time" {
  type        = string
  description = "Days since the date set in the customTime metadata for the object. This condition is satisfied when the current date and time is at least the specified number of days after the customTime"
  default     = null
}
variable "days_since_noncurrent_time" {
  type        = string
  description = "Relevant only for versioned objects. Number of days elapsed since the noncurrent timestamp of an object."
  default     = null
}

variable "noncurrent_time_before" {
  type        = string
  description = "Relevant only for versioned objects. The date in RFC 3339 (e.g. 2017-06-13) when the object became nonconcurrent."
  default     = null
}
variable "type" {
  type        = string
  description = "The type of the action of this Lifecycle Rule. Supported values include: Delete and SetStorageClass"
  default     = "Delete"
}
variable "storage_class" {
  type        = string
  description = "(Required if action type is SetStorageClass) The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
  default     = null
}

######################################
###   Optional Features variables  ###
######################################
variable "is_locked" {
  type        = bool
  description = " If set to true, the bucket will be locked and permanently restrict edits to the bucket's retention policy. "
  default     = false
}
variable "retention_period" {
  type        = number
  description = "The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived."
  default     = "7776000"
}
variable "log_bucket" {
  type        = string
  description = "The bucket that will receive log objects."
  default     = null
}
variable "log_object_prefix" {
  type        = string
  description = "The object prefix for log objects. If it's not provided, by default GCS sets this to this bucket's name."
  default     = null
}
variable "default_kms_key_name" {
  type        = string
  description = "The id of a Cloud KMS key that will be used to encrypt objects inserted into this bucket"
  default     = null
}
variable "data_locations" {
  type        = set(string)
  description = "The list of individual regions that comprise a dual-region bucket. "
  default     = null
}
variable "main_page_suffix" {
  type        = string
  description = "Behaves as the bucket's directory index where missing objects are treated as potential directories."
  default     = null
}
variable "not_found_page" {
  type        = string
  description = "The custom object to return when a requested resource is not found."
  default     = null
}

######################################
###  Variables for Storage::Object ###
######################################

variable "object_name" {
  type        = string
  description = "The name of the object."
  default     = "I am an object"
}
variable "object_source" {
  type        = string
  description = "A path to the data you want to upload. Must be defined if content is not."
  default     = "./image.jpg"
}
variable "content" {
  type        = string
  default     = null
  description = "Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output."
}
variable "bucket" {
  type        = string
  description = "The name of the containing bucket"
  default     = "log-bucket-saurav-24800"
}
variable "metadata" {
  type        = map(any)
  description = "User-provided metadata, in key/value pairs."
  default = {
    foo  = "bar"
    fizz = "buzz"
    "13" = "42"
  }
}
variable "cache_control" {
  type        = string
  description = "Cache-Control directive to specify caching behavior of object data. If omitted and object is accessible to all anonymous users"
  default     = null
}
variable "content_disposition" {
  type        = string
  description = " Content-Disposition of the object data."
  default     = null
}
variable "content_encoding" {
  type        = string
  description = "Content-Encoding of the object data."
  default     = null
}
variable "content_language" {
  type        = string
  description = "Content-Language of the object data."
  default     = null
}
variable "content_type" {
  type        = string
  description = "Content-Type of the object data. Defaults to application/octet-stream or text/plain charset=utf-8"
  default     = null
}
variable "event_based_hold" {
  type        = string
  description = "Whether an object is under event-based hold. Event-based hold is a way to retain objects until an event occurs, which is signified by the hold's release (i.e. this value is set to false). After being released (set to false), such objects will be subject to bucket-level retention (if any)."
  default     = null
}
variable "temporary_hold" {
  type        = string
  description = "Whether an object is under temporary hold. While this flag is set to true, the object is protected against deletion and overwrites."
  default     = null
}
variable "detect_md5hash" {
  type        = string
  description = "Detect changes to local file or changes made outside of Terraform to the file stored on the server."
  default     = null
}
variable "object_storage_class" {
  type        = string
  description = "The StorageClass of the new bucket object. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. If not provided, this defaults to the bucket's default storage class or to a standard class"
  default     = null
}
variable "kms_key_name" {
  type        = string
  description = "The resource name of the Cloud KMS key that will be used to encrypt the object."
  default     = null
}

######################################
###   Optional Features variables  ###
######################################
variable "encryption_algorithm" {
  type        = string
  description = "Encryption algorithm. Default: AES256"
  default     = null
}
variable "encryption_key" {
  type        = string
  description = "Base64 encoded Customer-Supplied Encryption Key."
  default     = null
}
