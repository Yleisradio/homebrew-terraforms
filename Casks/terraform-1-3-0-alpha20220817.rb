cask "terraform-1-3-0-alpha20220817" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.0-alpha20220817"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "78514bf223734e6d0c10697df509c63eb8327651b8746eeb1607a6b13cb6ec95",
    arm: "c463904ab2e53dfe9487dd3aa429de32ec300ea7a643b600759ed432d77f1713"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
