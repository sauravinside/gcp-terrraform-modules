output "resource_url" {
    value = google_storage_bucket.static-site.self_link  
}

output "bucket_url" {
    value = google_storage_bucket.static-site.url
}