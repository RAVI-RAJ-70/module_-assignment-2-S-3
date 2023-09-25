variable "Name" {
  type = map(object({
    ami = string
    instance_type = string
    subnet_id = string
  }))
}

variable "ec2_tags" {
  type = map(string)
  description = "tags of instance"
  default = {
    name        = "Raaz",
    owner       = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}
variable "ec2_volume_tags" {
  type = map(string)
  description = "volume tags of instance"
  default = {
    name  = "Raaz",
    owner  = "ravi.raj@cloudeq.com"
    purpose     = "Training"
  }
}

variable "bucket_name" {
  type = list(string)
}

variable "s3_tags" {
  type = map(string)
  description = "tags of bucket"
  default = {
    name = "Raaz",
    owner = "ravi.raj@cloudeq.com",
    environment = "dev"
  }
  
}