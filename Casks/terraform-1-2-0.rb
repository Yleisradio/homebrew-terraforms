cask "terraform-1-2-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1b102ba3bf0c60ff6cbee74f721bf8105793c1107a1c6d03dcab98d7079f0c77",
    arm: "f5e46cabe5889b60597f0e9c365cbc663e4c952c90a16c10489897c2075ae4f0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
