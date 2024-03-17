cask "terraform-0-2-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.2.2"

  arch = "amd64"
  sha256 "1b4581e41e05145d2e9707cad5313636120a80b04cb796a503b3bfe59b6901d2"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
