variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "scaling_policy_name" {
  type        = string
  description = "(Required) Name of the policy."
}

variable "scaling_adjustment" {
  type        = number
  default     = 1
  description = "(Optional) Number of instances by which to scale. adjustment_type determines the interpretation of this number (e.g., as an absolute number or as a percentage of the existing Auto Scaling group size). A positive increment adds to the current capacity and a negative value removes from the current capacity."
}

variable "adjustment_type" {
  type        = string
  default     = "ChangeInCapacity"
  description = "(Optional) Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity."
}

variable "cooldown" {
  type        = number
  default     = 300
  description = "(Optional) Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start."
}

variable "asg_name" {
  type        = string
  description = "(Optional) Name of the Auto Scaling Group."
}
