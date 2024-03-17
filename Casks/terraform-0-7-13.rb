cask "terraform-0-7-13" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.13"

  arch = "amd64"
  sha256 "c1e004ad2bff4e92edb13cf32a18b67b5178fc3597a844beeda09cc4f9c30b65"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
