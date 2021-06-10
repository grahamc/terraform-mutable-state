
variable "mylist" {
  type = list(string)
}

resource "local_file" "bogus" {
    content     = "bogus"
    filename = "${path.module}/bogus"
}

output "mylist" {
  value = var.mylist
}
