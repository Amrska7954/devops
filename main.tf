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