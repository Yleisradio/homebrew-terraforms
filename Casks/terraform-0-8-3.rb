cask "terraform-0-8-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.3"

  arch = "amd64"
  sha256 "84ecdd2adf61629a6bd4c1316df8f76290afad689630225d415666b422214a83"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
