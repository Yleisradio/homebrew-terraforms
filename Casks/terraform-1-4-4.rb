cask "terraform-1-4-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0303ed9d7e5a225fc2e6fa9bf76fc6574c0c0359f22d5dfc04bc8b3234444f7c",
    arm: "75602d9ec491982ceabea813569579b2991093a4e0d76b7ca86ffd9b7a2a1d1e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
