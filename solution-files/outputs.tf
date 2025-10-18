output "websiteurl" {
  value = "http://${aws_route53_record.phonebook.name}"
}

output "dns-name" {
  value = "http://${aws_lb.app-lb.dns_name}"
}

output "db-addr" {
  value = aws_db_instance.db_server.address
}

output "db-endpoint" {
  value = aws_db_instance.db_server.endpoint
}