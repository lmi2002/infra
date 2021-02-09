# cmd packer build image aws
 packer build -var-file=./settings/aws_setting.json ./packer/ubuntu.json
# Когда запустится сервис на AWS нужно зайти в Security groups и добавить custumer port: который показывает puma (9292) anywhere 
