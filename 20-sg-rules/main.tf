resource "aws_security_group_rule" "bastian_internet" {
type = "ingress"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"] # in this can give our laptop ip also but it may change so allowing from internet
security_group_id = local.bastion_sg_id
}

resource "aws_security_group_rule" "mongodb_bastian" {
type = "ingress"
from_port = 22
to_port = 22
protocol = "tcp"
source_security_group_id = local.bastion_sg_id
security_group_id = local.mongodb_sg_id
}