module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.server_name

  instance_type          = "t2.small"
  vpc_security_group_ids = [var.sg_id]
  ami = data.aws_ami.ami_info.id
  user_data = file("jenkins.sh")

  tags = merge(
    {
        Name = "${var.server_name}"

    }
  )
  
}