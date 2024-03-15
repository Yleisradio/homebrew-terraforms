cask "terraform-1-7-0-alpha20231108" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.0-alpha20231108"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "68a916fa04ca6a43cfcb803edd5703d2349b74481f27bd7777d6885a6abb721f",
    arm: "772415b52f31d9af114aa50a5a9c3ff0261f74048cc581562c3fa1e931da405f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
