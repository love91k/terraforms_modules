variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
default= "~/.ssh/id_rsa.pub"
}


variable "key_name" {
  description = "Desired name of AWS key pair"
  default="id_rsa"
}

variable "elb_name" {
  description = "Load balance will be created in this name"
  default = "terraform-assigment"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "ap-south-1"
}

variable "user_data_path" {
  default = "userdata.sh" #ngnix setup via userdata
}

#multiple ami can be  entered, and correct ami will be picked as per region defined 
variable "aws_amis" {
  default = {
    ap-south-1 = "ami-0b3acf3edf2397475"
    us-east-1 = "ami-0c1a7f89451184c8b"
  }
}
