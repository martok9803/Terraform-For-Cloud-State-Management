resource "aws_instance" "vprofile_bastion" {
  ami                    = lookup(var.AMIS, var.AWS_REGION)
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.MySSHKey.key_name
  subnet_id              = module.vpc.public_subnets[0]
  count                  = var.instance_count
  vpc_security_group_ids = [aws_security_group.vprofile-bastion-sg.id]

  tags = {
    Name    = "vprofile-bastion"
    PROJECT = "vprofile"
  }

provisioner "file" {
    content     = templatefile("templates/db-deploy.tmpl", { rds_endpoint = aws_db_instance.vprofile_rds.address, db_user = var.dbuser, db_pass = var.dbpass })
    destination = "/tmp/vprofile-dbdeploy.sh"
}


  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/vprofile-dbdeploy.sh",
      "sudo /tmp/vprofile-dbdeploy.sh"
    ]
  }


  connection {
    user        = var.USERNAME
    private_key = file(var.PRIV_KEY_PATH)
    host        = self.public_ip
  }

  depends_on = [aws_db_instance.vprofile_rds]
}