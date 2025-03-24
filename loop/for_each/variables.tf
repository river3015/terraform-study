variable "user_names" {
  description = "The list of user names to create"
  type = list(string)
  default = ["neo", "trinity", "morpheus"]
}