module "Project_Union_Prod_Group" {
    source = "../..//modules/iam"

    group_name = "Project_Union_Prod_Group"
    policy_name = "Project_Union_Prod_group_policy"
    policy_description = "This policy will gives set of permissions under Project union Production group"
    managed_policies_to_attach = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
    inline_policy_to_attach = data.aws_iam_policy_document.project_union_prod_group_inline_policy.json
}


data "aws_iam_policy_document" "project_union_prod_group_inline_policy" {
    statement {
        sid = ""
        actions = [
            "cloudtrail:*",
            "cloudwatch:*"
        ]
        resources = ["*"]
    }
}
