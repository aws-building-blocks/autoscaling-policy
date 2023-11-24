# Autoscaling Policy
resource "aws_autoscaling_policy" "scaling_policy" {
  name                   = var.scaling_policy_name
  scaling_adjustment     = var.scaling_adjustment
  adjustment_type        = var.adjustment_type
  cooldown               = var.cooldown
  autoscaling_group_name = var.asg_name
}
