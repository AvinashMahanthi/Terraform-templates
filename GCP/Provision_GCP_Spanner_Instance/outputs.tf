output "id" {
  value       = google_spanner_instance.Spanner-instance.id
  description = "An identifier for the resource with format {{project}}/{{name}}"
}

output "state" {
  value       = google_spanner_instance.Spanner-instance.state
  description = "Instance status: 'CREATING' or 'READY' "
}