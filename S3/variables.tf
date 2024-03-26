# variables.tf

variable "bucket_name" {
    description = "Josh's Bucket"
    type = string
}

variable "access_key" {
    description     = "access_key"
    type            = string
    senstive        = true
}

variable "secret_key" {
    description     = "access_key"
    type            = string
    senstive        = true
}