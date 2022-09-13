resource "aws_s3_bucket" "dl" {
    bucket = "datalake-alef-igti-edc-tf"
    acl = "private"

    tags ={
        "CURSO" = "EDC",
        "MODULO" = "TF"
        }


    server_side_encryption_configuration {
    rule {
        apply_server_side_encryption_by_default {
            sse_algorith = "AES256"
            }
        }
    }

}

