remote_state {
  backend = "local"
  config = {
    path = "\\\\terraform-state\\websohere\\dev\\terraform.state"
    encryption_key = "${var.encryption_key}"
  }
}