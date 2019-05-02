# Download the latest Ghost Image
resource "docker_image" "image_id" {
  name = "${var.image_name}"
}

# Start the Container
resource "docker_container" "container_id" {
  name  = "${var.container_name}"
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "${var.ext_port}"
  }
}
