output "iam_workload_identity_pool_managed_identities_id" {
  description = "Map of id values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_workload_identity_pool_managed_identities_attestation_rules" {
  description = "Map of attestation_rules values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no attestation_rules are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.attestation_rules if v.attestation_rules != null && length(v.attestation_rules) > 0 }
}
output "iam_workload_identity_pool_managed_identities_deletion_policy" {
  description = "Map of deletion_policy values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no deletion_policy are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "iam_workload_identity_pool_managed_identities_description" {
  description = "Map of description values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no description are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.description if v.description != null && length(v.description) > 0 }
}
output "iam_workload_identity_pool_managed_identities_disabled" {
  description = "Map of disabled values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no disabled are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.disabled if v.disabled != null }
}
output "iam_workload_identity_pool_managed_identities_name" {
  description = "Map of name values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no name are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_workload_identity_pool_managed_identities_project" {
  description = "Map of project values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no project are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.project if v.project != null && length(v.project) > 0 }
}
output "iam_workload_identity_pool_managed_identities_state" {
  description = "Map of state values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no state are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.state if v.state != null && length(v.state) > 0 }
}
output "iam_workload_identity_pool_managed_identities_workload_identity_pool_id" {
  description = "Map of workload_identity_pool_id values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no workload_identity_pool_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.workload_identity_pool_id if v.workload_identity_pool_id != null && length(v.workload_identity_pool_id) > 0 }
}
output "iam_workload_identity_pool_managed_identities_workload_identity_pool_managed_identity_id" {
  description = "Map of workload_identity_pool_managed_identity_id values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no workload_identity_pool_managed_identity_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.workload_identity_pool_managed_identity_id if v.workload_identity_pool_managed_identity_id != null && length(v.workload_identity_pool_managed_identity_id) > 0 }
}
output "iam_workload_identity_pool_managed_identities_workload_identity_pool_namespace_id" {
  description = "Map of workload_identity_pool_namespace_id values across all iam_workload_identity_pool_managed_identities, keyed the same as var.iam_workload_identity_pool_managed_identities except keys with no workload_identity_pool_namespace_id are omitted"
  value       = { for k, v in google_iam_workload_identity_pool_managed_identity.iam_workload_identity_pool_managed_identities : k => v.workload_identity_pool_namespace_id if v.workload_identity_pool_namespace_id != null && length(v.workload_identity_pool_namespace_id) > 0 }
}

