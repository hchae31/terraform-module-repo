# EC2 모듈 리소스 정의
resource "aws_instance" "this" {
  ami = var.ami # ubuntu 22.04 LTS
  instance_type = var.instance_type
  key_name      = var.key_name # 키페어 이름

  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }

  disable_api_termination = true # 종료 방지 활성화
  vpc_security_group_ids = [var.security_group_id]
  # vpc_security_group_ids = ["sg-0c5931479ecdcd514"]

  tags = {
    Name = var.instance_name
  }
   user_data = filebase64("${path.module}/user_data.sh")
}