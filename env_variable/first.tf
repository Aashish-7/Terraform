variable "name" {
  type = string
}

output "printname" {
  value = "Hello, ${var.name}"
}