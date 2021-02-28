variable "region" {
  default     = "us-east-1"
  description = "Main region"
}

#variable "access_key" {
#  description = "Confgurado no  AWS utilizando o comando aws configure e passando o valor da key"
#}

#variable "secret_key" {
#  description = "Confgurado no  AWS utilizando o comando aws configure e passando o valor da key"
#}

variable "ami" {
  default = "ami-047a51fa27710816e"
}

variable "type" {
  default = "t2.micro"
}

variable "ips" {
  type = "list"
  default = ["3ffe:1900:4545:3:200:f8ff:fe21:67cf",
  "3ffe:1900:4545:3:200:f8ff:fe21:67cd"]
}

variable "tags" {
  type = "map"
  default = { "Name" = "Nodejs"
  "Env" = "Dev" }
}