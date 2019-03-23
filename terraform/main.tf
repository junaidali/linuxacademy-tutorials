# download the ghost image
resource "docker_image" "image_id" {
  name = "ghost:alpine"
}

# run image
resource "docker_container" "container_id" {
  name = "blog"
  image = "${docker_image.image_id.name}"
  ports {
     internal = "2368"
     external = "80"	
  }
}
