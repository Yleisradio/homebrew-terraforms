cask "terraform-0-12-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.4"

  arch = "amd64"
  sha256 "e19691d775849888a0695a07e52a884dc617ca2100759eca5bbe4d0f428a7bc3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
