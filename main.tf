provider "aws" {
  region = var.region
}
locals {
  tags: {
    Name: "myEC2"
  }
}
resource "aws_instance" "ansible_server" {
  ami           = "ami-047126e50991d067b"
  instance_type = "t3.small"

  lifecycle {
    create_before_destroy = true
  }
  tags = local.tags
}
