cask "terraform-0-12-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.2"

  arch = "amd64"
  sha256 "f0cc23bc6ec1a5adc4043108ff5c79c2bddcdc70b056bd207defca1ae386d477"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
