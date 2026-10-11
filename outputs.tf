output "core_images_lookup_id" {
  description = "Map of id values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_images_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_images_lookup_display_name" {
  description = "Map of display_name values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_images_lookup_filter" {
  description = "Map of filter values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_images_lookup_images" {
  description = "Map of images values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no images are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.images if v.images != null && length(v.images) > 0 }
}
output "core_images_lookup_operating_system" {
  description = "Map of operating_system values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no operating_system are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.operating_system if v.operating_system != null && length(v.operating_system) > 0 }
}
output "core_images_lookup_operating_system_version" {
  description = "Map of operating_system_version values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no operating_system_version are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.operating_system_version if v.operating_system_version != null && length(v.operating_system_version) > 0 }
}
output "core_images_lookup_shape" {
  description = "Map of shape values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no shape are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.shape if v.shape != null && length(v.shape) > 0 }
}
output "core_images_lookup_sort_by" {
  description = "Map of sort_by values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no sort_by are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.sort_by if v.sort_by != null && length(v.sort_by) > 0 }
}
output "core_images_lookup_sort_order" {
  description = "Map of sort_order values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no sort_order are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.sort_order if v.sort_order != null && length(v.sort_order) > 0 }
}
output "core_images_lookup_state" {
  description = "Map of state values across all core_images_lookup, keyed the same as var.core_images_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_core_images.core_images_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

