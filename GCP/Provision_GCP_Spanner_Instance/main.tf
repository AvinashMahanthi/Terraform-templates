# projectId: cs-internal-cust-suc-cloudops

# Here in Cloud Spanner, either num_nodes or processing_units is required but not both. It returns error when 
# two inputs are given. So while giving values set the other value to "0".

locals {
  processing_units_provided = var.processing_units>0? true : false
  num_nodes_provided = var.num_nodes>0 ? true : false
}

resource "google_spanner_instance" "Spanner-instance" {

  config       = "${var.config}"
  name = var.name
  display_name = "${var.display_name}"
  project = "${var.project}"
  # compute_Capacity = "${compute_Capacity}"
  # quantity = var.quantity

  num_nodes = local.num_nodes_provided ? "${var.num_nodes}" : null
  processing_units = local.processing_units_provided ? "${var.processing_units}" : null

}