// Get latest Ubuntu 24.04 LTS AMI
data "aws_ami" "ubuntu_24" {
  most_recent = true
  owners      = ["099720109477"] //Canonical's account ID

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

//Bastion EC2
resource "aws_instance" "bastion" {
  ami           = data.aws_ami.ubuntu_24.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public[0].id
  key_name      = var.key_pair_name
  vpc_security_group_ids = [aws_security_group.bastion.id]

  tags = {
    Name = "${var.project_name}-bastion"
  }
}
