provider "aws" {
profile = "myprofile"
}

resource "aws_s3_bucket" "example_amamr1009" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_instance" "example_instance" {
  ami           = "ami-08a52ddb321b32a8c"          # Replace with the actual AMI ID
  instance_type = "t2.micro"
  key_name      = "YOUR_KEY_PAIR_NAME"

  tags = {
    Name = "ExampleInstance"
  }
}

#2nd commit

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

#code 3


resource "aws_vpc" "main" {
 cidr_block = "10.0.0.0/16"
 
 tags = {
   Name = "Project VPC"
 }
}

#code 4

# resource "aws_vpc" "main" {
#  cidr_block = "10.0.0.0/16"
#  tags = {
#    Name = "Project VPC"
#  }
# }