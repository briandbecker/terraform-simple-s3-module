variable "bucket_name" {
  description = "Name of the bucket"
}

variable "acl" {
  description = "Bucket ACL"
  default     = "private"
}

variable "tags" {
  type        = "map"
  description = "A mapping of tags to assign to bucket"
}

