resource "aws_security_group" "project-sg" {
  name = "project-sg"
  dynamic "ingress" {
    for_each = var.ingress_port
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"

    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
  }
}
