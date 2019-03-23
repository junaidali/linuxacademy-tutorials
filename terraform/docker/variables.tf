# variables
variable "container_name" {
  description = "name of container"
  default = "blog"
}

variable "image" {
  description = "image for container"
  default = "ghost:alpine"
}

variable "int_port" {
  description = "internal port for container"
  default = "2368"
}

variable "ext_port" {
  description = "external port for container"
  default = "80"
}
