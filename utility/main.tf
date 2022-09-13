terraform {  
  required_version = ">= 0.14.9"
}

# Archive folder
data "archive_file" "dotfiles" {
  type        = "zip"
  output_path = "${path.module}/dotfiles.zip"
  source_dir  = "${path.module}/../infra"
}