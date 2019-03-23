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
