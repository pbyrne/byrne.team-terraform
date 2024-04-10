module "fastmail-dns" {
  source = "github.com/pbyrne/terraform-fastmail-dnsimple"

  apex = var.apex
}

resource "dnsimple_zone_record" "bucket-files" {
  name      = "bucket-files"
  type      = "CNAME"
  value     = "web.messagingengine.com"
  zone_name = var.apex
}

resource "dnsimple_zone_record" "bucket-files-dev" {
  zone_name = var.apex
  name      = "bucket-files-dev"
  value     = "web.messagingengine.com"
  type      = "CNAME"
}

resource "dnsimple_zone_record" "bucket-inbox" {
  name      = "bucket-inbox"
  type      = "CNAME"
  value     = "web.messagingengine.com"
  zone_name = var.apex
}

resource "dnsimple_zone_record" "files" {
  name      = "files"
  type      = "CNAME"
  value     = "web.messagingengine.com"
  zone_name = var.apex
}
