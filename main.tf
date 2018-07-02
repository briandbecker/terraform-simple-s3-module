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

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
  acl    = "${var.acl}"
  tags = "${var.tags}"
}

output "bucket_arn" {
  description = "The ARN of the bucket."
  value       = "${aws_s3_bucket.bucket.arn"
}
