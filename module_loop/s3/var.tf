variable "bucket_name" {
  type = string
  # description = "name for bucket01"
}


variable "s3_tags" {
    type = map(string)
    description = "tags"
    default = {
        name        = "Raaz"
        owner       = "ravi.raj@cloudeq.com"
        environment = "Dev"
        }
    }
