######################################
###  Variables for Storage::Object ###
######################################

variable "name" {
  type        = string
  description = "The name of the object."
  default     = "I am an object"
}
variable "object_source" {
  type        = string
  description = "A path to the data you want to upload. Must be defined if content is not."
  default     = "./image.jpg"
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

######################################
###       Optional variables       ###
######################################

variable "content" {
  type        = string
  default     = null
  description = "Data as string to be uploaded. Must be defined if source is not. Note: The content field is marked as sensitive. To view the raw contents of the object, please define an output."
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
