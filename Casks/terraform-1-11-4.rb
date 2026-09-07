cask "terraform-1-11-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.4"
  sha256 arm:   "867e0808fa971217043e25b7a792b10720c79b1546f8a68479b74f138be73e18",
         intel: "a56d5002b9f7647291faccc3dd1a70350e60fb61e4c45037629508b8fdc2575b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
