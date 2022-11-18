output "printname" {
  #  value = "first user is ${var.username[0]}"
  value = "${join(",", var.username)}"
}

output "printupper" {
  value = "${upper(var.username[0])}"
}

output "printlower" {
  value = "${lower(var.username[1])}"
}

output "printtitle" {
  value = "${title(var.username[2])}"
}