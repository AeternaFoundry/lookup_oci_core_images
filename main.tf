data "oci_core_images" "core_images_lookup" {
  for_each = var.core_images_lookup

  compartment_id           = each.value.compartment_id
  display_name             = each.value.display_name
  operating_system         = each.value.operating_system
  operating_system_version = each.value.operating_system_version
  shape                    = each.value.shape
  sort_by                  = each.value.sort_by
  sort_order               = each.value.sort_order
  state                    = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

