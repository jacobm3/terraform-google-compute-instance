variable "region" {
  default = "us-east1"
}

variable "count" {}
variable "name_prefix" {}
variable "machine_type" {}
variable "user_data" {
  default = ""
}

variable "disk_type" {
  default = "pd-ssd"
}

variable "disk_size" {}
variable "disk_image" {}

variable "subnetwork" {}

variable "startup_script" {
  default = <<EOV
#! /bin/bash
apt-get update
apt-get install -y apache2
cat <<EOF > /var/www/html/index.html
<html><body>
<div align="center"><h1>Hello World</h1>
<p>This page was created from a simple startup script!</p>
<br><br><br>
<img src="https://www.meetmindful.com/wp-content/uploads/2016/01/peace-meditate-nature-outside-night-night-fall-peace-solitude1.jpg"/>
</div>
</body></html>
EOF
EOV
}
