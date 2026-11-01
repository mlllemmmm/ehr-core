terraform {
  required_providers {
    local = { source = "hashicorp/local" }
  }
}

resource "local_file" "ehr_env" {
  filename = "${path.module}/ehr.env"
  content  = "URL=http://localhost:30092\n"
}
