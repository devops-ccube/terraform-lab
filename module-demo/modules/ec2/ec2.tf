resource "aws_instance" "ec2vm" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ec2_type}"
  key_name = "${var.kp}"
  tags{
      Name = "stage"
  }
}
