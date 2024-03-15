cask "terraform-0-14-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.9"

  arch = "amd64"
  sha256 "a62e812d068b44b8a93d8b2fc024850ad69cb5ce7f9b0bfc68e836b90a06693d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
