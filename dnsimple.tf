resource "dnsimple_zone_record" "foobar" {
  zone_name = var.apex
  name   = "patrick"
  value  = "https://patrickbyrne.net"
  type   = "URL"
}

resource "dnsimple_zone_record" "foobar" {
  zone_name = var.apex
  name   = "_atproto.patrick"
  value  = "did=did:plc:krtm6dltju5ikaqwvca24sa5"
  type   = "TXT"
}
