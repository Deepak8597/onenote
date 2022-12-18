provider "aws" {

    region = "ap-south-1"
  
}
# ####################VPC###############
# resource "aws_vpc" "mainvpc" {
#   cidr_block = "172.30.0.0/16"

# }
# ####################Subnet###############

# resource "aws_subnet" "s1" {
#   vpc_id     = aws_vpc.mainvpc.id
#   cidr_block = "172.30.16.0/24"

#   tags = {
#     "Name" = "Public Subent"
#   }

# }
# # resource "aws_subnet" "s2" {
# #     vpc_id = aws_vpc.mainvpc.id
# #     cidr_block = "172.30.32.0/16"

# #     tags = {
# #       "Name" = "Private Subent"
# #     }

# # }
# ####################Route-table###############

# resource "aws_route_table" "rt" {
#   vpc_id = aws_vpc.mainvpc.id

#   tags = {
#     Name = "Route-table"
#   }
# }
# ####################Subnet - asso ###############

# resource "aws_route_table_association" "a" {
#   subnet_id      = aws_subnet.s1.id
#   route_table_id = aws_route_table.rt.id
# }

# # resource "aws_route_table_association" "a" {
# #   subnet_id      = aws_subnet.s2.id
# #   route_table_id = aws_route_table.rt.id
# # }

# ####################IGW###############


# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.mainvpc.id
#   tags = {
#     Name = "igw"
#   }

# }

# ##########################SG##########################

# resource "aws_security_group" "mainsg" {
#   name        = "mainsg"
#   description = "Allow SSH, HTTPS, HTTP"
#   vpc_id      = aws_vpc.mainvpc.id

#   ingress {
#     description = "HTTP, HTTPS and SSH"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "HTTP, HTTPS and SSH"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     description = "HTTP, HTTPS and SSH"
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "mainsg"
#   }
# }

resource "aws_instance" "ec2" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
    Name = "Linux Serverrrr"
  }


}