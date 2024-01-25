locals {
  string_local = var.str
  number_local = var.num
  list_local   = var.list1
  map_local    = var.map_1
  object_local = var.object
}

resource "random_id" "random" {
  byte_length = 4
}

resource "local_file" "file1" {
  content = var.str
  filename = "${path.module}/file1/string"
}

resource "local_file" "file2" {
  content = var.num
  filename = "${path.module}/file1/number"
}

resource "local_file" "file3" {
  content = var.list1[0]
  filename = "${path.module}/file2/list"
}

resource "local_file" "file4" {
  content = var.map_1.key3
  filename = "${path.module}/file2/map"
}

resource "local_file" "file5" {
  content = var.object.name
  filename = "${path.module}/file3/object"
}



resource "random_id" "server" {
  keepers = {
    
    ami_id = var.ami_id
  }

  byte_length = 8
}