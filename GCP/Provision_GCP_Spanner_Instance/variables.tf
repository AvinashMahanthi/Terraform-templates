variable "name" {
  description = "The name of the instance. Can't be changed after it's created."
  type = string
}

variable "config" {
  description = "The name of the instance's configuration which defines the geographic placement and replication of your DB's in this instance. Refer this https://cloud.google.com/spanner/docs/instance-configurations"
  type = string
}

variable "display_name" {
  description = "The descriptive name as it appears in UIs."
  type = string
}

# variable "compute_Capacity" {
#   description = "Your compute capacity determines the amount of data throughput, queries per second (QPS) and storage limits in your instance. One node equals 1,000 processing units."
#   type = string
#   allowedValues = ["num_nodes","processing_units"]
# }

# variable "quantity" {
#   description = "Your compute capacity determines the amount of data throughput, queries per second (QPS) and storage limits in your instance. One node equals 1,000 processing units."
#   type = number
#   nullable = true
# }

variable "num_nodes" {
  description = "The number of nodes allocated to this instance. If processing_units is given, please provide 0"
  type = number
  nullable = true
}

variable "processing_units" {
  description = "The number of processing units allocated to this instance. If num_nodes is given, please provide 0"
  type = number
  # default = null
  nullable = true
}

variable "project" {
  description = "The ID of the project in which the resource belongs."
  type = string
}