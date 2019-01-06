provider "aws" {
 region     = "us-east-1"
}

variable "count" {
 default = 3
}

data "aws_ami" "baseami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["apache-base-ami"]
 }
}
resource "aws_instance" "apache" {
 ami           = "${data.aws_ami.baseami.id}"
 instance_type = "t2.micro"
 key_name = "cckeypair"
 count = "${var.count}"

 tags{
   Name ="apache-server-${count.index}"
 }
}

output "public-dns" {
 value = "${aws_instance.apache.*.public_dns}"
}


