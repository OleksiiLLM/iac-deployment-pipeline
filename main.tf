# 1. Define the image we want to use
resource "docker_image" "webapp_image" {
  name         = "nginx:alpine"
  keep_locally = false
}

# 2. Define the server (container) that should be running
resource "docker_container" "production_web_server" {
  image = docker_image.webapp_image.image_id
  name  = "meta-pe-web-server"
  
  ports {
    internal = 80
    external = 8000
  }

  # Meta PE bonus: Define resource limits (Capacity Planning)
  memory = 256 # Limit memory to 256MB
}