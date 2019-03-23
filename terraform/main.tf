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

# download the ghost image
resource "docker_image" "image_id" {
  name = "${var.image}"
}

# run image
resource "docker_container" "container_id" {
  name = "${var.container_name}"
  image = "${docker_image.image_id.name}"
  ports {
     internal = "${var.int_port}"
     external = "${var.ext_port}"
  }
}

# add output
output "IP Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
  value = "${docker_container.container_id.name}"
}
