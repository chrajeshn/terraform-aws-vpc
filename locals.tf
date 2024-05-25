locals {
   resource_name = "${var.project_name}-${var.environment}"
   az_name =  slice(data.aws_availability_zone.available.name, 0, 2)
}
