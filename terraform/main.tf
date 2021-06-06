provider "aws" {
	access_key = "AKIA5BM5ECVVT4KT76CO"
	secret_key = "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"
	region     = "eu-west-1"
}
resource "aws_instance" "app" {
	ami           = "ami-0c230e75310e24a69"
	instance_type = "t2.micro"
	tags = {
		Name = "reddit"
	}
}
resource "aws_vpc" "vpc-1" {
	cidr_block = "10.0.0.0/16"
	tags = {
		Name = "vpc-reddit"
	}
}
resource "aws_subnet" "subnet-1" {
	vpc_id     = aws_vpc.vpc-1.id
	cidr_block = "10.0.0.0/24"
	tags = {
		Name = "subnet-reddit"
	}
}
