resource "aws_instance" "web" {
  ami           = "ami-0a1179631ec8933d7" #Amazon Linux AMI
  instance_type = "t2.micro"
  #security_groups = [sg-0f6b9aa934100f78d]
  #first method
  key_name = "Demo_login"
  

  tags = {
    Name = "My first Terraform Ec2"
  }
}