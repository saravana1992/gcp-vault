#!/bin/bash

export VAULT_ADDR="$(terraform output vault_addr)"
export VAULT_CACERT="$(pwd)/ca.crt"

vault operator init -recovery-shares 5 -recovery-threshold 3

vault login

vault audit enable file file_path=/var/log/vault/audit.log

vault kv put secret/hello foo=world

vault kv get secret/hello
