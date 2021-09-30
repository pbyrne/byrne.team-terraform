resource "dnsimple_record" "apex-primary" {
  domain   = local.hostname
  name     = ""
  value    = local.mx-primary
  priority = "10"
  type     = "MX"
}

resource "dnsimple_record" "apex-secondary" {
  domain   = local.hostname
  name     = ""
  value    = local.mx-secondary
  priority = "20"
  type     = "MX"
}

resource "dnsimple_record" "wildcard-primary" {
  domain   = local.hostname
  name     = "*"
  value    = local.mx-primary
  priority = "10"
  type     = "MX"
}

resource "dnsimple_record" "wildcard-secondary" {
  domain   = local.hostname
  name     = "*"
  value    = local.mx-secondary
  priority = "20"
  type     = "MX"
}

resource "dnsimple_record" "apex-spf" {
  domain = local.hostname
  name   = ""
  value  = local.spf
  type   = "TXT"
}

resource "dnsimple_record" "dkim" {
  count = 4

  domain = local.hostname
  name   = "fm${count.index + 1}._domainkey"
  value  = "fm${count.index + 1}.byrne.family.dkim.fmhosted.com"
  type   = "CNAME"
}
