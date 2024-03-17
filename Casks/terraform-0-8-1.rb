cask "terraform-0-8-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.1"

  arch = "amd64"
  sha256 "275104513600bf50a28942131d928d2be405c75f9f36a9c722718500075856a1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
