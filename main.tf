resource "google_iam_workload_identity_pool_managed_identity" "iam_workload_identity_pool_managed_identities" {
  for_each = var.iam_workload_identity_pool_managed_identities

  workload_identity_pool_id                  = each.value.workload_identity_pool_id
  workload_identity_pool_managed_identity_id = each.value.workload_identity_pool_managed_identity_id
  workload_identity_pool_namespace_id        = each.value.workload_identity_pool_namespace_id
  deletion_policy                            = each.value.deletion_policy
  description                                = each.value.description
  disabled                                   = each.value.disabled
  project                                    = each.value.project

  dynamic "attestation_rules" {
    for_each = each.value.attestation_rules != null ? each.value.attestation_rules : []
    content {
      google_cloud_resource = attestation_rules.value.google_cloud_resource
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

