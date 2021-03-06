# download the ghost image
module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# run image
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${lookup(var.container_name, var.env)}"
  int_port = "${var.int_port}"
  ext_port = "${lookup(var.ext_port, var.env)}"
}

resource "null_resource" "null_id" {
  provisioner "local-exec" {
    command = "echo ${module.container.container_name}:${module.container.ip} >> /tmp/container.txt"
  }
}
