cask "terraform-1-4-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.2"
  sha256 arm:   "af8ff7576c8fc41496fdf97e9199b00d8d81729a6a0e821eaf4dfd08aa763540",
         intel: "c218a6c0ef6692b25af16995c8c7bdf6739e9638fef9235c6aced3cd84afaf66"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
