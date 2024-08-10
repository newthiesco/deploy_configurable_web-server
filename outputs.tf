#output shows the DNS name of the ALB
output "public_ip" {
  value       = aws_lb.web.dns_name
  description = "The domain name of the load balancer"
}

output "asg-name" {
  value = aws_autoscaling_group.web.name
}

output "elb_dns_name" {
  value = aws_lb.web.dns_name
}

output "instance_ids" {
  value = aws_autoscaling_group.web.id
}
