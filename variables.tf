# required
variable "fastly_domain" {
  description = ""
  type        = "string"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "env" {
  description = "Environment name"
}

variable "team" {
  description = "Team that owns the service"
}

variable "component" {
  description = "Component name"
}

variable "platform_config" {
  description = "Platform configuration"
  type        = "map"
  default     = {}
}

# optional
variable "alb_domain" {
  description = ""
  type        = "string"
  default     = "mmgapi.net"
}

variable "backend_ip" {
  description = "Backend to route all requests by default to; default: 404 (see README)"
  type        = "string"
  default     = "404"
}

variable "ssl_cert_check" {
  description = "Check the backend cert is valid"
  type        = "string"
  default     = "true"
}

variable "ssl_cert_hostname" {
  description = "The hostname to validate the certificate presented by the backend against"
  type        = "string"
  default     = ""
}

variable "fastly_caching" {
  description = "Whether to enable / forcefully disable caching on Fastly (default: true)"
  type        = "string"
  default     = "true"
}
