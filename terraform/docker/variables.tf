# image variables
variable "image" {
  description = "container image"
  default = "ghost:latest"
}

# container variables
variable "container_name" {
  description = "name of container"
  default = "blog"
}

variable "int_port" {
  description = "internal port for container"
  default = "2368"
}

variable "ext_port" {
  description = "external port for container"
  default = "80"
}
