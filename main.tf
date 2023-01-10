module "node-group" {
  source     = "./modules/nodes"
  depends_on = [random_uuid.test]
}

resource "random_uuid" "test" {
}