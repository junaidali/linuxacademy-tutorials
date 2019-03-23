variable "env" {
  description = "env: dev or prod"
}

# image variables
variable "image" {
  description = "container image"
  type = "map"
  default = { 
     "dev" = "ghost:latest"
     "prod" =  "ghost:alpine"
  }
}

# container variables
variable "container_name" {
  description = "name of container"
  type = "map"
  default = {
     "dev" = "dev_blog"
     "prod" =  "prod_blog"
  }
}

variable "int_port" {
  description = "internal port for container"
  default = "2368"
}

variable "ext_port" {
  description = "external port for container"
  type = "map"
  default = {
     "dev" = "8080"
     "prod" =  "80"
  }
}
