provisioner "file" {
  source            = "./scripts"
  destination       = "/tmp"

  connection {
    type            = ""
    user            = ""
    private_key     = ""
  }
}

provisioner "remote-exec" {
  inline = [
  "chmod +x /tmp/selinux_setup.sh"
  "sudo /tmp/selinux_setup.sh"
  ]
}
