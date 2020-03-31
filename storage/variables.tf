#-----storage/variables.tf-----

variable "bucket_name" {
  description = "Describe the name of the bucket"
  type        = string
}

variable "s3_tags" {
  description = "Describe the tags of the bucket"
  type        = map(string)
}
