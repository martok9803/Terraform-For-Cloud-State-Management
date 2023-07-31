variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AMIS" {
  type = map(any)
  default = {
    eu-central-1 = "ami-04e601abe3e1a910f"
    eu-west-1    = "ami-01dd271720c1ba44f"
    eu-west-2    = "ami-0eb260c4d5475b901"
  }
}

variable "PRIV_KEY_PATH" {
  default = "MySSHKey"
}

variable "PUB_KEY_PATH" {
  default = "MySSHKey.pub"
}

variable "USERNAME" {
  default = "ubuntu"
}

variable "MYIP" {
  default = "0.0.0.0/0"
}

variable "rmquser" {
  default = "marti"
}

variable "rmqpass" {
  default = "Zakonospiraciq98!"
}

variable "dbuser" {
  default = "admin"
}

variable "dbpass" {
  default = "admin123"
}

variable "dbname" {
  default = "accounts"
}

variable "instance_count" {
  default = "1"
}

variable "VPC_NAME" {
  default = "marti-VPC"
}

variable "ZONE1" {
  default = "eu-central-1a"
}

variable "ZONE2" {
  default = "eu-central-1b"
}

variable "ZONE3" {
  default = "eu-central-1c"
}

variable "VpcCIDR" {
  default = "10.123.0.0/16"
}

variable "PubSub1CIDR" {
  default = "10.123.1.0/24"
}

variable "PubSub2CIDR" {
  default = "10.123.2.0/24"
}

variable "PubSub3CIDR" {
  default = "10.123.3.0/24"
}

variable "PrivSub1CIDR" {
  default = "10.123.4.0/24"
}

variable "PrivSub2CIDR" {
  default = "10.123.5.0/24"
}

variable "PrivSub3CIDR" {
  default = "10.123.6.0/24"
}



