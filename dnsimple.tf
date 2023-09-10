resource "dnsimple_zone_record" "patrick-redirect" {
  zone_name = var.apex
  name      = "patrick"
  value     = "https://patrickbyrne.net"
  type      = "URL"
}

resource "dnsimple_zone_record" "apex-redirect" {
  zone_name = var.apex
  name      = ""
  value     = "https://patrickbyrne.net"
  type      = "URL"
}

resource "dnsimple_zone_record" "patrick-bluesky-verification" {
  zone_name = var.apex
  name      = "_atproto.patrick"
  value     = "did=did:plc:krtm6dltju5ikaqwvca24sa5"
  type      = "TXT"
}

resource "dnsimple_zone_record" "droplet" {
  name      = "droplet"
  type      = "CNAME"
  value     = "198.199.84.189" # TODO Get this as output from managing the DigitalOcean Droplet in Terraform
  zone_name = var.apex
}
