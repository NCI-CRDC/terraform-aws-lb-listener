output "arn" {
  value = aws_lb_listener.this.arn
}

output "id" {
  value = aws_lb_listener.this.id
}

output "load_balancer_arn" {
  value = aws_lb_listener.this.load_balancer_arn
}
