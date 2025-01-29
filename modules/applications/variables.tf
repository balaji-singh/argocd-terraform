variable "applications" {
  description = "List of applications to deploy"
  type        = map(any)
  default     = {}
}