resource "aws_key_pair" "MySSHKey" {
  key_name   = "MySSHKey"
  public_key = file("~/.ssh/MySSHKey.pub")
}