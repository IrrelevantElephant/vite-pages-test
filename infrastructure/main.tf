terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
    }
  }
}

locals {
  github_ns = {
    "1" = "185.199.108.153",
    "2" = "185.199.109.153",
    "3" = "185.199.110.153",
    "4" = "185.199.111.153"
  }
}

resource "ns1_zone" "vitetest_zone" {
  zone = "vitetest.irrelevantelephant.co.uk"
}

resource "ns1_record" "www_vitetest" {
  zone   = ns1_zone.vitetest_zone.zone
  domain = "vitetest.irrelevantelephant.co.uk"
  type   = "A"
  answers {
    answer = local.github_ns["1"]
  }
  answers {
    answer = local.github_ns["2"]
  }
  answers {
    answer = local.github_ns["3"]
  }
  answers {
    answer = local.github_ns["4"]
  }
}