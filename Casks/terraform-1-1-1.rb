cask "terraform-1-1-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "d125dd2e92b9245f2202199b52f234035f36bdcbcd9a06f08e647e14a9d9067a",
    arm: "4cb6e5eb4f6036924caf934c509a1dfd61cd2c651bb3ee8fbfe2e2914dd9ed17"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
