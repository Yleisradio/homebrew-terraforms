cask "terraform-0-13-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.2"

  arch = "amd64"
  sha256 "8f2ef6fe5727014dde0496d88dffab5fcafd0c35138466d19de2dd6147d96b90"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
