resource "google_project_service" "services" {
  for_each  = toset(var.services)
  project   = "my-project"
  service   = each.value
}