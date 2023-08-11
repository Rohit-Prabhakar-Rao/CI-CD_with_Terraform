provider "local" {}

resource "null_resource" "web_server" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'Hello, Jenkins and Terraform!' > index.html"
  }
}
