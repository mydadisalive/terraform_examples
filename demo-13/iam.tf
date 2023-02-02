# group definition
resource "aws_iam_group" "administrators" {
  name = "administrators"
}

resource "aws_iam_policy_attachment" "administrators-attach" {
  name       = "administrators-attach"
  groups     = [aws_iam_group.administrators.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# user
resource "aws_iam_user" "admin11" {
  name = "admin11"
}

resource "aws_iam_user" "admin12" {
  name = "admin12"
}

resource "aws_iam_group_membership" "administrators-users" {
  name = "administrators-users"
  users = [
    aws_iam_user.admin11.name,
    aws_iam_user.admin12.name,
  ]
  group = aws_iam_group.administrators.name
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}

