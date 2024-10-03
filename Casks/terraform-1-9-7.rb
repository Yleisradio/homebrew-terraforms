cask "terraform-1-9-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.7"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c35d5e978f5edbc398bbc9ccc89840b173c66978e1cdb6fc8a48c5c42346dd55",
    arm: "0cdc2e21d0843a14379414e722806954d78b0439e8a7001f7500276bfc12eed4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
