variable "age" {
  type = number
}

variable "username" {
  type = string
}

output "printuser" {
  value = "Hello, ${var.username} your age is ${var.age}"
}