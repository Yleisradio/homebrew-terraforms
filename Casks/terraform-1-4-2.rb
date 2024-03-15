cask "terraform-1-4-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c218a6c0ef6692b25af16995c8c7bdf6739e9638fef9235c6aced3cd84afaf66",
    arm: "af8ff7576c8fc41496fdf97e9199b00d8d81729a6a0e821eaf4dfd08aa763540"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
