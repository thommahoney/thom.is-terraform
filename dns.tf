resource "digitalocean_domain" "thom_is" {
  name = "thom.is"
}

resource "digitalocean_record" "thom_is_ns_1" {
  domain = digitalocean_domain.thom_is.name
  type   = "NS"
  ttl    = 86400
  name   = "@"
  value  = "ns1.digitalocean.com."
}

resource "digitalocean_record" "thom_is_ns_2" {
  domain = digitalocean_domain.thom_is.name
  type   = "NS"
  ttl    = 86400
  name   = "@"
  value  = "ns2.digitalocean.com."
}

resource "digitalocean_record" "thom_is_ns_3" {
  domain = digitalocean_domain.thom_is.name
  type   = "NS"
  ttl    = 86400
  name   = "@"
  value  = "ns3.digitalocean.com."
}

resource "digitalocean_record" "thom_is_a_1" {
  domain = digitalocean_domain.thom_is.name
  name   = "@"
  ttl    = 600
  type   = "A"
  value  = "151.101.2.137" // k.sni.global.fastly.net
}

resource "digitalocean_record" "thom_is_a_2" {
  domain = digitalocean_domain.thom_is.name
  name   = "@"
  ttl    = 600
  type   = "A"
  value  = "151.101.66.137" // k.sni.global.fastly.net
}

resource "digitalocean_record" "thom_is_a_3" {
  domain = digitalocean_domain.thom_is.name
  name   = "@"
  ttl    = 600
  type   = "A"
  value  = "151.101.130.137" // k.sni.global.fastly.net
}

resource "digitalocean_record" "thom_is_a_4" {
  domain = digitalocean_domain.thom_is.name
  name   = "@"
  ttl    = 600
  type   = "A"
  value  = "151.101.194.137" // k.sni.global.fastly.net
}

resource "digitalocean_record" "thom_is_www_cname" {
  domain = digitalocean_domain.thom_is.name
  name   = "www"
  ttl    = 600
  type   = "CNAME"
  value  = "k.sni.global.fastly.net."
}

resource "digitalocean_record" "thom_is_mx_1" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  priority = 10
  ttl      = 3600
  type     = "MX"
  value    = "mx01.mail.icloud.com."
}

resource "digitalocean_record" "thom_is_mx_2" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  priority = 10
  ttl      = 3600
  type     = "MX"
  value    = "mx02.mail.icloud.com."
}

resource "digitalocean_record" "thom_is_mx_3" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  priority = 5
  ttl      = 3600
  type     = "MX"
  value    = "alt2.aspmx.l.google.com."
}

resource "digitalocean_record" "thom_is_apple_domain" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  ttl      = 3600
  type     = "TXT"
  value    = "apple-domain=45jwPYhqvdZH07OY"
}

resource "digitalocean_record" "thom_is_icloud_spf" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  ttl      = 3600
  type     = "TXT"
  value    = ""v=spf1 include:icloud.com ~all""
}

resource "digitalocean_record" "thom_is_icloud_dkim" {
  domain   = digitalocean_domain.thom_is.name
  name     = "sig1._domainkey"
  ttl      = 60
  type     = "CNAME"
  value    = "sig1.dkim.thom.is.at.icloudmailadmin.com."
}

resource "digitalocean_record" "thom_is_keybase_verification" {
  domain   = digitalocean_domain.thom_is.name
  name     = "@"
  ttl      = 3600
  type     = "TXT"
  value    = "keybase-site-verification=ySYb1PcjcXdQMFuTQqnczMTySMPZd-tt85y5weo9euI"
}

resource "digitalocean_record" "thom_is_fastly_tls_challenge" {
  domain   = digitalocean_domain.thom_is.name
  name     = "_acme-challenge"
  ttl      = 60
  type     = "CNAME"
  value    = "lu2rpdg3ugqmg8m7s2.fastly-validations.com."
}

resource "digitalocean_record" "thom_is_wasm" {
  domain   = digitalocean_domain.thom_is.name
  name     = "wasm"
  ttl      = 600
  type     = "CNAME"
  value    = "ecp.map.fastly.net."
}

