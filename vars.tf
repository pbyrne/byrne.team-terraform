locals {
  hostname     = "byrne.family"
  mx-primary   = "in1-smtp.messagingengine.com"
  mx-secondary = "in2-smtp.messagingengine.com"
  spf          = "v=spf1 include:spf.messagingengine.com ?all"
}
