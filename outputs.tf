#######################################
##   Storage (str) :: Bucket output  ##
#######################################
output "resource_url" {
  value = module.folder2.resource_url
}

output "bucket_url" {
  value = module.folder2.bucket_url
}

#######################################
##   Storage (str) :: Object output  ##
#######################################

output "crc32c" {
    value = module.folder3.crc32c
    description = "Base 64 CRC32 hash of the uploaded data."  
}
output "md5hash" {
    value = module.folder3.md5hash
    description = "Base 64 MD5 hash of the uploaded data."  
}
output "self_link" {
    value = module.folder3.self_link
    description = "A url reference to this object."  
}
output "output_name" {
    value = module.folder3.output_name
    description = "The name of the object. Use this field in interpolations with google_storage_object_acl to recreate google_storage_object_acl resources when your google_storage_bucket_object is recreated."  
}
output "media_link" {
    value = module.folder3.media_link
    description = "A url reference to download this object."  
}