provider "aws" {
    region = var.aws_region 
}

#centralizar o arquivo de controle de estado do terraform
terraform {
    backend "s3" {
        bucket = "terraform-state-igti-alef"
        key = "stage/igti/edc/mod1/terraform.tfstate"
        region = "us-east-2"
    }
}