variable "app" {
  type        = string
  description = "the name of the application expressed as an acronym"
  sensitive   = false
}

variable "env" {
  type        = string
  description = "the target tier ('dev', 'qa', 'stage', or 'prod'.)"
  sensitive   = false

  validation {
    condition     = contains(["dev", "qa", "stage", "prod", "nonprod"], var.env)
    error_message = "valid values are 'dev', 'qa', 'stage', 'prod', and 'nonprod'"
  }
}

variable "program" {
  type        = string
  description = "the program associated with the application"
  sensitive   = false

  validation {
    condition     = contains(["crdc", "ccdi", "ctos"], var.program)
    error_message = "valid values for program are 'crdc', 'ccdi', and 'ctos'"
  }
}

variable "default_action_type" {
  type        = string
  description = "type of routing action - valid values are forward, redirect, or fixed-response"
}

variable "load_balancer_arn" {
  type        = string
  description = "arn of the load balancer to associate this listener to"
}

variable "protocol" {
  type        = string
  description = "protocol for connections from clients to the load balancer - for alb, valid values are 'HTTP' and 'HTTPS'"
}
