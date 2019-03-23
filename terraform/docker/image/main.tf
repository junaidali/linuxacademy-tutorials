# download the ghost image
resource "docker_image" "image_id" {
  name = "${var.image}"
}
