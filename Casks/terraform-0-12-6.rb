cask "terraform-0-12-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.6"

  arch = "amd64"
  sha256 "7168dfa057d9aed7ea3f111d87294f263e341c8b848e776bc13d169ddf2926c7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
