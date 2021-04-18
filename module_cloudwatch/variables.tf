variable "region" {
  description = "AWS region"
}

variable "component" {}
variable "deployment_identifier" {}

variable "lambda_arn" {
  description = "Lambda ARN"
}

variable "lambda_function_name" {
  description = "Name of the Lambda function"
}

variable "lambda_schedule_expression" {
  description = "Lambda schedule expression. Defaults to every 5 minutes"
  default     = "rate(5 minutes)"
}


#aws_cloudwatch_event_rule#
variable "enabled" {
  type        = bool
  default     = true
  description = "Enable event."
}

variable "description" {
  type        = string
  default     = ""
  description = "The description for the rule."
}

variable "schedule_expression" {
  default     = null
  description = "(if event_pattern isn't specified) The scheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes)."
}

variable "event_pattern" {
  default     = null
  description = "(schedule_expression isn't specified) Event pattern described a JSON object. See full documentation of CloudWatch Events and Event Patterns for details."
}

variable "role_arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "is_enabled" {
  type        = bool
  default     = true
  description = "Whether the rule should be enabled (defaults to true)."
}


#aws_cloudwatch_event_target#
variable "target_id" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
}

variable "input_path" {
  type        = string
  default     = ""
  description = "The value of the JSONPath that is used for extracting part of the matched event when passing it to the target."
}

variable "target_role_arn" {
  type        = string
  default     = ""
  description = "The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs_target is used."
}



#aws_lambda_permission#
variable "statement_id" {
   default = ""
}

variable "action" {
   default = ""
}

variable "function_name" {
   default = ""
}

variable "principal" {
   default = ""
}

variable "source_arn" {
   default = ""
}
