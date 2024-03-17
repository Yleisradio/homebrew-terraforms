cask "terraform-0-10-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.4"

  arch = "amd64"
  sha256 "70885c572f7bc54361c77d4839303210579db5875636711f621f6763574c1237"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
