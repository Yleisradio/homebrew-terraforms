cask "terraform-0-7-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.7"

  arch = "amd64"
  sha256 "eb6255c4c14c61458ea4598a0e3176695c296e9f1650ad56a24a1cb75d8fef35"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
