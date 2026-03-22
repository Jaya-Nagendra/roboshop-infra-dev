module "components" {
  for_each = var.components
  source = "git::https://github.com/Jaya-Nagendra/terraform-roboshop-component-module.git?ref=main"
  component = each.key
  rule_priority = each.value.rule_priority
}