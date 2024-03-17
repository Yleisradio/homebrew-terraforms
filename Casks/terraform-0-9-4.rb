cask "terraform-0-9-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.4"

  arch = "amd64"
  sha256 "73ec3c66a77e0c0879e6397fe2b4c4910b24464971fd0c27795b0fa09143f9ad"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
