variable "project" {
  default = "roboshop"
}

variable "env" {
  default = "dev"
}

variable "sg_names" {
  type = list
  default = [
    #database
    "mongodb", "redis", "mysql", "rabbitmq",
    #Backend
    "catalogue", "user", "cart", "shipping", "payment",
    "backend_alb",
    "frontend",
    "frontend_alb",
    "bastion"
  ]
}