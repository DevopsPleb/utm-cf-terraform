terraform {
    backend "remote" {
        Organization = "DevopsPleb"
        workspaces {
            name = "utm-cf-terraform"
        }
    }
}