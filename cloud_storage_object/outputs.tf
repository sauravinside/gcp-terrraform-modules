output "crc32c" {
    value = google_storage_bucket_object.picture.crc32c
    description = "Base 64 CRC32 hash of the uploaded data."  
}
output "md5hash" {
    value = google_storage_bucket_object.picture.md5hash
    description = "Base 64 MD5 hash of the uploaded data."  
}
output "self_link" {
    value = google_storage_bucket_object.picture.self_link
    description = "A url reference to this object."  
}
output "output_name" {
    value = google_storage_bucket_object.picture.output_name
    description = "The name of the object. Use this field in interpolations with google_storage_object_acl to recreate google_storage_object_acl resources when your google_storage_bucket_object is recreated."  
}
output "media_link" {
    value = google_storage_bucket_object.picture.media_link
    description = "A url reference to download this object."  
}