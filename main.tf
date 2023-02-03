resource "aws_lb_listener" "this" {
  load_balancer_arn = var.load_balancer_arn
  alpn_policy       = var.alpn_policy
  certificate_arn   = var.certificate_arn
  port              = var.port
  protocol          = var.protocol
  ssl_policy        = var.ssl_policy

  dynamic "default_action" {
    for_each = var.type == "redirect" ? [1] : [0]

    type = "redirect"

    content {
      redirect {
        port        = var.redirect_port
        path        = var.redirect_path
        protocol    = var.redirect_protocol
        status_code = var.redirect_status_code
      }
    }
  }
}

variable "redirect_path" {
  type        = string
  description = "(required if type = redirect) absolute path, starting with the leading '/''"
  default     = null
}

variable "redirect_port" {
  type        = string
  description = "(required if type = redirect) the redirect port"
  default     = "443"
}

variable "redirect_protocol" {
  type        = string
  description = "(required if type = redirect) the redirect protocol between 1 and 65535"
  default     = "HTTPS"
}

variable "redirect_status_code" {
  type        = string
  description = "(required if type = redirect) the http redirect code"
  default     = "HTTP_301"
}