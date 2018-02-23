variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.
Example: ~/.ssh/id_rsa.pub
DESCRIPTION
}

variable "key_name" {
  description = <<DESCRIPTION
Desired name of AWS key pair
Example: hana
DESCRIPTION
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-central-1"
}

# RHEL 7.3 (x64)
variable "aws_amis" {
  default = {
    eu-central-1 = "ami-d866f9b7"
  }
}
