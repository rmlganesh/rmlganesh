resource "aws_instance" "elasticsearch_instance" {
  ami           = "${var.aws_ami}"
  instance_type = "${var.aws_instance_type}"
  security_groups = ["${aws_security_group.elasticsearch_cluster_sg.name}"]
  key_name = "${aws_key_pair.mykeypair.key_name}"
  user_data = "${file("AWSES-node-setup.sh")}"
  count = "3"

  tags {
    Name = "elasticsearch_instance_${count.index}"
  }
}
