variable "iam_workload_identity_pool_managed_identities" {
  description = <<EOT
Map of iam_workload_identity_pool_managed_identities, attributes below
Required:
    - workload_identity_pool_id
    - workload_identity_pool_managed_identity_id
    - workload_identity_pool_namespace_id
Optional:
    - deletion_policy
    - description
    - disabled
    - project
    - attestation_rules (block):
        - google_cloud_resource (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    workload_identity_pool_id                  = string
    workload_identity_pool_managed_identity_id = string
    workload_identity_pool_namespace_id        = string
    deletion_policy                            = optional(string)
    description                                = optional(string)
    disabled                                   = optional(bool)
    project                                    = optional(string)
    attestation_rules = optional(list(object({
      google_cloud_resource = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_managed_identities : (
        length(v.workload_identity_pool_managed_identity_id) >= 2
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolManagedIdentityId: invalid when len(value) < 2]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_managed_identities : (
        length(v.workload_identity_pool_managed_identity_id) <= 63
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolManagedIdentityId: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iam_workload_identity_pool_managed_identities : (
        !startswith(v.workload_identity_pool_managed_identity_id, "gcp-")
      )
    ])
    error_message = "[from ValidateWorkloadIdentityPoolManagedIdentityId: must not start with \"gcp-\"]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

