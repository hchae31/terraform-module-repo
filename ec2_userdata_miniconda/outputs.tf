# user-data 템플릿 코드를 외부에 노출

output "miniconda_userdata_fastapi" {
  value = data.template_file.miniconda_userdata.rendered
}