cask "terraform-1-15-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.2"
  sha256 arm:   "4204bc3450418a7ce423e58451b053e5daed625ad6c6a15de98bc09345269f99",
         intel: "2bb701bc2db93ed39613df4f4e033ec4c2de9eba1c036d9a2f62cffc988af066"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
