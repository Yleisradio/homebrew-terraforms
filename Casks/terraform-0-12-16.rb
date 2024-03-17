cask "terraform-0-12-16" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.16"

  arch = "amd64"
  sha256 "8d3db354320078e0ceb0beec97ca1a0934378ef8ede28e2fe76481c171267762"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
