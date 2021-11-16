module "cloudformation-stack" {
  source  = "cloudposse/cloudformation-stack/aws"
  version = "0.7.1"
  
  enabled           = true
  namespace         = "sophos"
  stage             = "test"
  name              = "utm"
  template_url      = "https://s3.amazonaws.com/sophos-nsg-cf/utm/autoscaling.template"

  parameters        = {
      awsLicenseType                        = var.license_type
      utmControllerInstanceSize             = var.controller_instance 
      utmWorkerInstanceSize                 = var.worker_instance
      awsAvailabilityZone1                  = var.az1
      awsAvailabilityZone2                  = var.az2
      awsNetworkPrefix                      = var.network_prefix
      awsTrustedNetwork                     = var.trusted_network
      basicHostName                         = var.hostname
      basicAdminEmail                       = var.admin_email
      basicAdminPassword                    = var.admin_password
      basicOrganization                     = var.organization
      basicCity                             = var.city
      basicCountry                          = var.country
      awsKeyName                            = var.ssh_key
  }
}