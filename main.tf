

provider "aws"{} 

/*provider "aws"  {
   
     region = "us-east-2"
     access_key = "AKIAV6J2SDIZYG4SWBUK"
     secret_key = "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"
}*/



#local
locals {
  prod_env = "prod"
}

resource "aws_instance" "myserver"  {
     ami = "ami-00399ec92321828f5"
     instance_type = "t2.micro"
     tags = {
          Name = "${local.prod_env}_TF_tag"
          }
}
          

