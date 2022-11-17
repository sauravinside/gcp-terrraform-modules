#######################################
##      Storage (str) :: Object      ##
#######################################

resource "google_storage_bucket_object" "picture" {
  name   = var.name
  source = var.object_source
  bucket = var.bucket


  metadata            = var.metadata
  content             = var.content
  cache_control       = var.cache_control
  content_disposition = var.content_disposition
  content_encoding    = var.content_encoding
  content_language    = var.content_language
  content_type        = var.content_type
  event_based_hold    = var.event_based_hold
  temporary_hold      = var.temporary_hold
  detect_md5hash      = var.detect_md5hash
  storage_class       = var.object_storage_class
  kms_key_name        = var.kms_key_name

  #Uncomment to use encryption
  #  customer_encryption {
  #     encryption_algorithm = var.encryption_algorithm
  #     encryption_key = var.encryption_key
  #   }  
}
