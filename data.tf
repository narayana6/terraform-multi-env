
data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["309956199498"]

    filter {
        name   = "name"
        values = ["RHEL-9*"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
