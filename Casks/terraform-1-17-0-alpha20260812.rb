cask "terraform-1-17-0-alpha20260812" do
  arch arm: "arm64", intel: "amd64"

  version "1.17.0-alpha20260812"
  sha256 arm:   "a6adb3e57fa1cc00ae792db92750916c4d96017a2b0806004ec0b7dabbed0ece",
         intel: "594391472b302679d641c37d8dd477f4d6a54c17c0e49569b50526975a02fd4d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
