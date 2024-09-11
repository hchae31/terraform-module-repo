output "nginx_userdata" {
  value = data.templatefile.nginx_userdata.rendered
}