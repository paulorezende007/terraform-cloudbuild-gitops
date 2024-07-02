// Global
variable "project" {
  description = "The name of the project"
  type        = string
}
variable "project_id" {
  description = "The Project ID of the project"
  type        = string
}
variable "project_number" {
  description = "The Project Number of the project"
  type        = string
}
variable "region" {
  type        = string
  description = "Region where the resources should be created."
  default     = "us-central1"
}
variable "zone" {
  type        = string
  description = "Zone where the resources should be created."
  default     = "us-central1-a"
}
variable "prefix" {
  description = "Prefixo utilizado para nomenclatura dos recursos"
  type        = string
  default     = "iac"
}
variable "env" {
  description = "Ambiente dos recursos"
  type        = string
  default     = "dev"
}
