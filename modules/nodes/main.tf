module "eks_managed_node_groups" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "19.5.1"

  ami_id                     = "ami-03a30cc1dda93f173"
  ami_type                   = "AL2_x86_64"
  cluster_name               = "reproduction"
  create_iam_role            = false
  iam_role_arn               = "arn:aws:iam::012345678912:role/eks-role"
  iam_role_attach_cni_policy = false
  instance_types             = ["m5.xlarge"]
  subnet_ids                 = ["subnet-01234567890123456", "subnet-12345678901234567", "subnet-23456789012345678"]
  vpc_security_group_ids     = ["sg-01234567890123456"]
}
