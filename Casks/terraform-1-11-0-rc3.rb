cask "terraform-1-11-0-rc3" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-rc3"
  sha256 arm:   "d2f2010a546953e0713ce35577373249bdc20cbf30d75f15412cd5aba68d9de5",
         intel: "957fb41f0685925bb79fbce9d7b8602e52a3309d299f2cc33125fadd2b6095d5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
