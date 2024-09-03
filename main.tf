provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0ad21ae1d0696ad58"  # Replace with your desired AMI ID
  instance_type = "t2.micro"                # Replace with your desired instance type

  # Optionally, you can add a tag
  tags = {
    Name = "MyExampleInstance2"
  }

  # Optionally, you can specify the key name for SSH access
  key_name = "TEST-EC2-INSTANCE"  # Replace with your actual key pair name
}

# Output the public IP address of the instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
