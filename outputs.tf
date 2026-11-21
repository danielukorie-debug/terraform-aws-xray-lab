
output "xray_sampling_rule_name" {
  description = "Name of the planned X-Ray sampling rule."
  value       = aws_xray_sampling_rule.lab.rule_name
}

output "xray_sampling_rule_arn" {
  description = "ARN of the planned X-Ray sampling rule."
  value       = aws_xray_sampling_rule.lab.arn
}
