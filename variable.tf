/*variable "ubuntu_id" {
  default = "ami-00bb6a80f01f03502"


}*/
variable "ingress_port" {
  type    = list(number)
  default = [443, 22, 8080, 80]

}