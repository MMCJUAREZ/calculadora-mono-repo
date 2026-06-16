resource "aws_ecr_repository" "apps" {
  for_each             = toset(["ulises-backend", "ulises-frontend"])
  name                 = each.value
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}