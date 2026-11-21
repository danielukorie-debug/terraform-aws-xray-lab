# AWS X-Ray Validation Evidence

## Environment

- Region: `us-east-1`
- Terraform version: `1.17.0`
- Project: `terraform-aws-xray-lab`

## AWS Discovery

The X-Ray trace-summary query returned no matching traces for the last hour.

The X-Ray sampling-rule query returned the AWS-provided `Default` rule with priority `10000`.

## Terraform Validation

Command:

```bash
terraform validate
```

Observed output:

```text
Success! The configuration is valid.
```

## Terraform Plan

Command:

```bash
terraform plan -input=false -no-color
```

Observed result:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

Planned resource: `aws_xray_sampling_rule.lab`.

Planned rule name: `terraform-xray-lab-rule`.

## Deployment Status

**PLAN ONLY.** No Terraform apply was performed.

No custom X-Ray rule, application instrumentation, or trace delivery has been deployed or verified.

## Screenshot

`screenshots/xray-terraform-validation.png` — actual terminal validation and plan evidence.

