cask "terraform-1-5-0-rc2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0-rc2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "9893f178ecb84d019ff4c3ceb2d6570f019e8aa811ed9d5b1526f58efed07d93",
    arm: "35310803e55d604885d5a33a7f5cc914a3ae2ad183479bebcf1a699180538db5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
