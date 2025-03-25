variable "names" {
  description = "The list of user names to create"
  type = list(string)
  default = ["neo", "trinity", "morpheus"]
}

variable "hero_thousand_faces" {
  description = "map"
  type = map(string)
  default = {
    neo = "hero"
    trinity = "love interest"
    morpheus = "mentor"
  }
}