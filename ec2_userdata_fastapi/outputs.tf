# user-data 템플릿 코드를 외부에 노출

output "fastapi_userdata" {
  value = data.template_file.fastapi_userdata.rendered
}