cask "terraform-1-15-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-beta2"
  sha256 arm:   "e4bb2df7795788051f7089932f27e16f2379fddcd802450cdfecae0cf954192f",
         intel: "0f09c3703358520a5ae24385708d3c3029ec1169ff9c04bb150b7198ac07e6a4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
