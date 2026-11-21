
resource "aws_xray_sampling_rule" "lab" {
  rule_name      = "terraform-xray-lab-rule"
  priority       = 1000
  version        = 1
  reservoir_size = 1
  fixed_rate     = 0.05

  service_name = "terraform-xray-lab"
  service_type = "*"
  host         = "*"
  http_method  = "*"
  url_path     = "*"
  resource_arn = "*"

  attributes = {}

  tags = {
    Project     = "terraform-aws-xray-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
