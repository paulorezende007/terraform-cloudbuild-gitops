# Arquivo para ativação das APIs do Google Cloud. Se estas APIs não forem ativadas, não é possível criar recursos de forma automatizada, via Terraform

# A API Cloud Resource Manager deve ser ativada manualmente na Console Web


variable "gcp_service_list" {
  description ="The list of apis necessary for the project"
  type = list(string)
  default = [
    "cloudresourcemanager.googleapis.com",//Resource Maneger
    "servicenetworking.googleapis.com",//Service Networking
    "compute.googleapis.com",//Compute Engine
    "serviceusage.googleapis.com",//
    "iam.googleapis.com",//Identity and Access Management (IAM)
    "cloudbuild.googleapis.com",//Cloud Build
    //"container.googleapis.com",//GKE
    //"iap.googleapis.com",//IAP
    //"run.googleapis.com",//Cloud Run
    //"sqladmin.googleapis.com",//Cloud SQL
    //"vpcaccess.googleapis.com",//VPC Access
    //"secretmanager.googleapis.com",//Secret Manager
    //"clouddeploy.googleapis.com",//Cloud Deploy
    //"sourcerepo.googleapis.com",//Cloud Source Repository
    //"artifactregistry.googleapis.com",//Artifact Registry
    //"cloudkms.googleapis.com",//KMS
  ]
}

resource "google_project_service" "gcp_services" {
  for_each = toset(var.gcp_service_list)
  project = var.project_id
  service = each.key
}