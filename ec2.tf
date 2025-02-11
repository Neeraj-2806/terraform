resource "aws_instance" "project" {
  instance_type          = "t2.micro"
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.project-sg.id]
  key_name               = aws_key_pair.project_key.key_name
  root_block_device {
    volume_size = 20
    volume_type = "standard"
  }
  tags = {
    Name = "project-server"
  }
}
