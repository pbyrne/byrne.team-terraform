terraform {
  required_providers {
    dnsimple = {
      source = "dnsimple/dnsimple"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "byrne-team"

    workspaces {
      name = "byrne_team"
    }
  }
}
