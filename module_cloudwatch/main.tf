module "aws_cloudwatch_event_rule" {
  source = "../../modules/module_cloudwatch"
  count = var.enabled == true ? 1 : 0

  name                = var.name
  description         = var.description
  event_pattern       = var.event_pattern
  schedule_expression = var.schedule_expression
  role_arn            = var.role_arn
  is_enabled          = var.is_enabled
  tags                = var.tags
}

module "aws_cloudwatch_event_target" {
  source     = "../../modules/module_cloudwatch"
  count      = var.enabled == true ? 1 : 0
  rule       = aws_cloudwatch_event_rule.default.*.name[0]
  target_id  = var.target_id
  arn        = var.arn
  input_path = var.input_path
  role_arn   = var.target_role_arn
}


module "aws_lambda_permission" {
  source        = "../../modules/module_cloudwatch"
  statement_id  = var.statement_id
  action        = var.action
  function_name = var.function_name
  principal     = var.principal

  source_arn = var.source_arn
}