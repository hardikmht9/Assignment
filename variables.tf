
variable "num" {
  type    = number
  default = 9990000
}


variable "str" {
  type    = string
  default = "gurugram"
}


variable "map_1" {
  type = map(string)
  default = {
    key1 = "mehta"
    key3 = "sharma"
  }
}

variable "list1" {
  type    = list
  default = ["ritika", "ankush", "rahul"]
}

variable "ami_id" {
    type = string
}


variable "object" {
  type = object({
    name    = string
    age     = number
    address = string
  })
  default = {
    name    = "hardik mehta"
    age     = 22
    address = "Sirsa"
  }
}


