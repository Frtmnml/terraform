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

variable "service_names" {
    description     = "Name of ECR repositories"
    type            = set(string)
}
