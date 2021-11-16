variable "region" {
    default             = "us-east-2"
}
variable "license_type" {
    description         = "Available options: byol or hourly"
}
variable "controller_instance" {
    description         = "Instance size for the UTM controller instance"
    default             = "t2.small"
}
variable "worker_instance" {
    description          = "Instance size for the UTM worker instance"
    default              = "t2.small"   
}
variable "az1" {
    description         = "Availability Zone 1 (Required)"
    default             = "us-east-2a"
}
variable "az2" {
    description         = "Availability Zone 2 (Required)"
    default             = "us-east-2b"
}
variable "network_prefix" {
    description         = "VPC Network Prefix. EG: 10.6.0.0/16 would be 10.6"
    default             = "20.10"
}
variable "trusted_network" {
    description         = "CIDR of trusted network"
    default             = ""
}
variable "hostname" {
    description         = "Hostname for the utm. Can only contain lower and uppercase letters, numbers, and dots."
}
variable "admin_email" {
    description         = "Email address is only used for UTM administrative purposes."
}
variable "admin_password" {
    description         = "UTM Admin password."
}
variable "organization" {}
variable "city" {}
variable "country" {}
variable "ssh_key" {}

