cask "terraform-0-6-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.10"

  arch = "amd64"
  sha256 "9009582111ba938bd7e22767f533c712fb763dffa9f390b40b17f18742bfac59"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
