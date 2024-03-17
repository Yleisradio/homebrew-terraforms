cask "terraform-0-6-15" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.15"

  arch = "amd64"
  sha256 "9cb305ac00b85e2575da3c71504f3fdd3f7ef61f35457af999c7b88802143311"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
