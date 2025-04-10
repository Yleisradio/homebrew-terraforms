cask "terraform-1-11-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a56d5002b9f7647291faccc3dd1a70350e60fb61e4c45037629508b8fdc2575b",
    arm: "867e0808fa971217043e25b7a792b10720c79b1546f8a68479b74f138be73e18"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
