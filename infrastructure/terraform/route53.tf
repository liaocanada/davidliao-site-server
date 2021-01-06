resource "aws_route53_record" "root" {
  zone_id = data.aws_route53_zone.davidliao.zone_id
  name    = "davidliao.ca"
  type    = "A"
  ttl     = "86400"
  records = [aws_eip.ip.public_ip]
}

resource "aws_route53_record" "www" {
  zone_id = data.aws_route53_zone.davidliao.zone_id
  name    = "www.davidliao.ca"
  type    = "CNAME"
  ttl     = "86400"
  records = [aws_route53_record.root.name]
}

resource "aws_route53_record" "resume" {
  zone_id = data.aws_route53_zone.davidliao.zone_id
  name    = "resume.davidliao.ca"
  type    = "CNAME"
  ttl     = "3600"
  records = [aws_route53_record.root.name]
}

data "aws_route53_zone" "davidliao" {
  name = "davidliao.ca"
}
