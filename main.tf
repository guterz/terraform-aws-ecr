locals {
  tags_merged = merge(
    {
      "Name" = var.name
    },
  var.tags)
}

resource "aws_ecr_repository" "this" {
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability


  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }

  tags = local.tags_merged
}

resource "aws_ecr_repository_policy" "this" {
  count      = var.policy_enabled ? 1 : 0
  repository = aws_ecr_repository.this.name
  policy     = var.policy

  depends_on = [
    aws_ecr_repository.this
  ]
}
