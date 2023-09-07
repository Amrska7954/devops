provider "aws" {
profile = "myprofile"
}

# resource "aws_s3_bucket" "example_amamr1009" {
#   bucket = "my-tf-test-bucket"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
# # module "aws_instance" {
# #   source = "../common/aws_instance"
# #   # Other module configuration variables go here
# # }

# #2nd commit


# #code 3


# resource "aws_vpc" "main" {
#  cidr_block = "10.0.0.0/16"
 
#  tags = {
#    Name = "Project VPC"
#  }
# }

#code 4

# resource "aws_vpc" "main" {
#  cidr_block = "10.0.0.0/16"
#  tags = {
#    Name = "Project VPC"
#  }
# }

module "s3" {
  source = "../modules/s3"
  
}
# module "ec2" {
#   source = "../modules/ec2"
#   region      = "us-east-1"  # Specify the AWS region
#   # Other module configuration variables go here
# }