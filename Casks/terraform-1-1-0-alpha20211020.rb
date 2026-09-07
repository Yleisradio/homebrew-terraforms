cask "terraform-1-1-0-alpha20211020" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0-alpha20211020"
  sha256 arm:   "0302cb342a1f32d821929f130637af1b44dfd1732323c8bbed8a007d90a3396c",
         intel: "c7141fa2ad25a856155284c79b295e2054f417a3bfca88508419dba058294e10"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
