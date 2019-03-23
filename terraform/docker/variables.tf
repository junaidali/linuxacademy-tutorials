variable "env" {
  description = "env: dev or prod"
}

# image variables
variable "image" {
  description = "container image"
  type = "map"
}

# container variables
variable "container_name" {
  description = "name of container"
  type = "map"
}

variable "int_port" {
  description = "internal port for container"
  default = "2368"
}

variable "ext_port" {
  description = "external port for container"
  type = "map"
}
