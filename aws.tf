terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami = "ami-0d37e07bd4ff37148"
  instance_type = "t2.micro"
}

resource "aws_db_instance" "education" {
  identifier             = "education"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "13.1"
  username               = "edu"
  password               = "edu123"
  publicly_accessible    = true
  skip_final_snapshot    = true
}

# provider "azurerm" {
# }

# provider "digitalocean" {
# }