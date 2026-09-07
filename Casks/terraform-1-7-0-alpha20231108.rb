cask "terraform-1-7-0-alpha20231108" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-alpha20231108"
  sha256 arm:   "772415b52f31d9af114aa50a5a9c3ff0261f74048cc581562c3fa1e931da405f",
         intel: "68a916fa04ca6a43cfcb803edd5703d2349b74481f27bd7777d6885a6abb721f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
