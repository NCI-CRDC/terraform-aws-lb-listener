# Terraform AWS Module Template
A repository template for creating reusable terraform modules to support infrastructure as code capabilities for workloads running on AWS. 

# Overview

# Usage 

<!-- BEGIN_TF_DOCS -->
# Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

# Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

# Modules

No modules.

# Resources

| Name | Type |
|------|------|
| [aws_lb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |

# Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alpn_policy"></a> [alpn\_policy](#input\_alpn\_policy) | application-layer protocol negotiation (alpn) policy - can be set if protocol is 'TLS' | `string` | `null` | no |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | arn of the certificate for HTTPS listeners, not needed for HTTP listeners | `string` | `null` | no |
| <a name="input_default_action_type"></a> [default\_action\_type](#input\_default\_action\_type) | type of routing action - valid values are forward, redirect, or fixed-response | `string` | n/a | yes |
| <a name="input_fixed_response_content_type"></a> [fixed\_response\_content\_type](#input\_fixed\_response\_content\_type) | (required if type = fixed\_response) valid values are text/plain, text/css, text/html, application/javascript and application/json | `string` | `null` | no |
| <a name="input_fixed_response_message_body"></a> [fixed\_response\_message\_body](#input\_fixed\_response\_message\_body) | (required if type = fixed\_response)} message to return of request does not meet conditions of any listener rules | `string` | `"The application is not available at this time. Please try again soon."` | no |
| <a name="input_fixed_response_status_code"></a> [fixed\_response\_status\_code](#input\_fixed\_response\_status\_code) | (required if type = fixed\_response)} message to return of request does not meet conditions of any listener rules | `string` | `"503"` | no |
| <a name="input_load_balancer_arn"></a> [load\_balancer\_arn](#input\_load\_balancer\_arn) | arn of the load balancer to associate this listener to | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | port on which the load balancer is listening | `number` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | protocol for connections from clients to the load balancer - for alb, valid values are 'HTTP' and 'HTTPS' | `string` | n/a | yes |
| <a name="input_redirect_path"></a> [redirect\_path](#input\_redirect\_path) | (required if type = redirect) absolute path, starting with the leading '/'' | `string` | `null` | no |
| <a name="input_redirect_port"></a> [redirect\_port](#input\_redirect\_port) | (required if type = redirect) the redirect port | `string` | `"443"` | no |
| <a name="input_redirect_protocol"></a> [redirect\_protocol](#input\_redirect\_protocol) | (required if type = redirect) the redirect protocol between 1 and 65535 | `string` | `"HTTPS"` | no |
| <a name="input_redirect_status_code"></a> [redirect\_status\_code](#input\_redirect\_status\_code) | (required if type = redirect) the http redirect code | `string` | `"HTTP_301"` | no |
| <a name="input_ssl_policy"></a> [ssl\_policy](#input\_ssl\_policy) | Name of the SSL Policy for the listener - required if protocol is 'HTTPS' or 'TLS' | `string` | `"ELBSecurityPolicy-2016-08"` | no |

# Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_load_balancer_arn"></a> [load\_balancer\_arn](#output\_load\_balancer\_arn) | n/a |
<!-- END_TF_DOCS -->
