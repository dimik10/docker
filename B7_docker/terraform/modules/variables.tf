variable "instance_family_image" {
  description = "Instance image"
  type        = string
  default     = "lamp"
}

variable "vpc_subnet_id" {
  description = "VPC subnet network id"
  type        = string
}

variable "number" {
  description = "number"
  type = string
}

variable "instance_root_disk" {
  default = "20"
}
