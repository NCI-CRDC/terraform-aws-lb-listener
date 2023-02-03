resource "aws_lb_listener" "this" {
  load_balancer_arn = var.load_balancer_arn
  alpn_policy       = var.alpn_policy
  certificate_arn   = var.certificate_arn
  port              = var.port
  protocol          = var.protocol
  ssl_policy        = var.ssl_policy

  dynamic "default_action" {
    for_each = var.default_action_type == "redirect" ? [1] : [0]

    content {
      type = var.default_action_type

      redirect {
        port        = var.redirect_port
        path        = var.redirect_path
        protocol    = var.redirect_protocol
        status_code = var.redirect_status_code
      }
    }
  }

  dynamic "default_action" {
    for_each = var.default_action_type == "fixed-reponse" ? [1] : [0]

    content {
      type = var.default_action_type

      fixed_response {
        content_type = var.fixed_response_content_type
        message_body = var.fixed_response_message_body
        status_code  = var.fixed_response_status_code
      }
    }
  }
}
