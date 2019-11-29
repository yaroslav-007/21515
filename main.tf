resource "null_resource" "sleep" {


  provisioner "local-exec" {
    # Bootstrap script called with private_ip of each node in the clutser
    command = "sleep 300"
  }
}

