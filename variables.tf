variable "alpn_policy" {
  type        = string
  description = "application-layer protocol negotiation (alpn) policy - can be set if protocol is 'TLS'"
  default     = null
}

variable "certificate_arn" {
  type        = string
  description = "arn of the certificate for HTTPS listeners, not needed for HTTP listeners"
  default     = null
}

variable "default_action_type" {
  type        = string
  description = "type of routing action - valid values are forward, redirect, or fixed-response"
}

variable "fixed_response_content_type" {
  type        = string
  description = "(required if type = fixed_response) valid values are text/plain, text/css, text/html, application/javascript and application/json"
  default     = null
}

variable "fixed_response_message_body" {
  type        = string
  description = "(required if type = fixed_response)} message to return of request does not meet conditions of any listener rules"
  default     = "The application is not available at this time. Please try again soon."
}

variable "fixed_response_status_code" {
  description = "(required if type = fixed_response)} message to return of request does not meet conditions of any listener rules"
  default     = "503"
}

variable "load_balancer_arn" {
  type        = string
  description = "arn of the load balancer to associate this listener to"
}

variable "port" {
  type        = number
  description = "port on which the load balancer is listening"
}

variable "protocol" {
  type        = string
  description = "protocol for connections from clients to the load balancer - for alb, valid values are 'HTTP' and 'HTTPS'"
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

variable "ssl_policy" {
  type        = string
  description = "Name of the SSL Policy for the listener - required if protocol is 'HTTPS' or 'TLS'"
  default     = "ELBSecurityPolicy-2016-08"
}