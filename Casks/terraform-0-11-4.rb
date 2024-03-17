cask "terraform-0-11-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.4"

  arch = "amd64"
  sha256 "c328b8d60840b96641f519deb85601cb1f2cce458c7bdb7786712471234ac0c5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
