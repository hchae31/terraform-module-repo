data "template_file" "miniconda_userdata" {
  template = <<-EOF
      # 미니콘다 설치
      wget https://repo.anaconda.com/miniconda/Miniconda3-py310_24.7.1-0-Linux-x86_64.sh -O /tmp/Miniconda3.sh
      bash /tmp/Miniconda3.sh -b -p /home/ubuntu/miniconda3
      echo 'export PATH="/home/ubuntu/miniconda3/bin:$PATH"' >> /home/ubuntu/.bashrc
      source /home/ubuntu/.bashrc

  EOF
}