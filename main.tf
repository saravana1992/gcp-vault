module "vault" {
  source         = "terraform-google-modules/vault/google"
  project_id     = "${var.project_id}"
  region         = "${var.region}"
  kms_keyring    = "${var.kms_keyring}"
  kms_crypto_key = "${var.kms_crypto_key}"

  storage_bucket_force_destroy = true
}

data "terraform_remote_state" "foo" {
  backend = "gcs"
  config = {
    bucket  = "bucket-name"
    prefix  = "dev"
  }
}

output "vault_addr" {
  value = module.vault.vault_addr
}
