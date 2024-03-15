cask "terraform-0-4-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.4.2"

  arch = "amd64"
  sha256 "317e2b9721394c1f6cc6710f13598cd91e8816b82fdc3781485556cadf1311dd"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
