data "aws_availability_zone" "available" {
    state = "available"
}

data "aws_vpc" "default" {
    default = true
}

data "aws_route_table" "main" {
    vpc_id = data.aws_vpc_default.id
    filter {
        name = "association.main"
        values = ["true"]
    }
}