locals{
    # cluster_version = "1.23"
}
# locals {
#   cluster_name      = var.cluster_name != "" ? var.cluster_name : random_pet.current.id
#   node_group_defaults = {
#     ami_type         = var.node_group_ami
#     disk_size        = var.node_group_disk_size
#     desired_capacity = var.desired_node_count
#     max_capacity     = var.max_node_count
#     min_capacity     = var.min_node_count
#     instance_types   = [var.node_machine_type]

#     launch_template_id      = null
#     launch_template_version = null

#     # Provider default which is 'ON_DEMAND'. We don't set it explicitly to avoid changes to existing clusters provisioned with this module
#     capacity_type = var.enable_spot_instances ? "SPOT" : null

#     k8s_labels = {
#       "jenkins-x.io/name"       = var.cluster_name
#       "jenkins-x.io/part-of"    = "jx-platform"
#       "jenkins-x.io/managed-by" = "terraform"
#     }

#     additional_tags = {
#       aws_managed = "true"
#     }
#   }

#   node_groups_extended = { for k, v in var.node_groups : k => merge(
#     local.node_group_defaults,
#     v,
#     contains(keys(v), "k8s_labels") ? {
#       # Deep merge isn't a thing in terraform, yet, so we commit these atrocities.
#       k8s_labels = merge(
#         local.node_group_defaults["k8s_labels"],
#         v["k8s_labels"],
#       )
#     } : {},
#   ) }
# }
