variable "core_images_lookup" {
  description = <<EOT
Map of core_images_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - operating_system
    - operating_system_version
    - shape
    - sort_by
    - sort_order
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id           = string
    display_name             = optional(string)
    operating_system         = optional(string)
    operating_system_version = optional(string)
    shape                    = optional(string)
    sort_by                  = optional(string)
    sort_order               = optional(string)
    state                    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.core_images_lookup : (
        v.sort_by == null || (contains(["TIMECREATED", "DISPLAYNAME"], v.sort_by))
      )
    ])
    error_message = "must be one of: \"TIMECREATED\", \"DISPLAYNAME\""
  }
  validation {
    condition = alltrue([
      for k, v in var.core_images_lookup : (
        v.sort_order == null || (contains(["ASC", "DESC"], v.sort_order))
      )
    ])
    error_message = "must be one of: \"ASC\", \"DESC\""
  }
}

