cask "terraform-0-10-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.2"

  arch = "amd64"
  sha256 "1ad6bad0349a3bcda8264746a3db0a39875c2cd93e3418393cc082bbb4812541"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
