cask "terraform-0-15-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0-rc1"

  arch = "amd64"
  sha256 "57bd815c2e0ba101ab7bce3d00585430ec2e74d289dfbbe47e336551c48f914f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
