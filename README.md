# terraform-vault-kubernetes-namespace-addition

Used for temporarily allow enable Vault Enterprise while still having Vault legacy features available

## Usage

```hcl-terraform
module "example_namespace" {
  source  = "kiwicom/kubernetes-namespace-addition/vault"
  version = "1.0.0"

  providers = {
    vault = vault.enterprise
  }

  name      = "example"
  base_path = "${local.GITLAB_PROJECT_PATH}/${google_container_cluster.cluster.name}"

  maintainer_groups = [
    "engineering.platform-seniors"
  ]

  vault_additional_policies = [
    module.jerry_vault_integration.roles_policies["rw"],
    "kw/secret/platform/security/iam/production/creds-maintainer",
  ]
}
```

