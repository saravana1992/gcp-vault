variable "project_id" {
  description = "GCP Project ID to launch resources in"
  default     = "crafty-mile-241013"
}

variable "region" {
  description = "Region to launch in"
  default     = "us-central1"
}

variable "kms_keyring" {
  default     = "vault"
  description = "Name of the GCP KMS keyring"
}

variable "kms_crypto_key" {
  default     = "vault-init"
  description = "Name of the GCP KMS crypto key"
}
