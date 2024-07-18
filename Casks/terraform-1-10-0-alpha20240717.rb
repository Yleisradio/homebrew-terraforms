cask "terraform-1-10-0-alpha20240717" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240717"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "96172fff96da153c0e08a748ddfb5b566978157262c52f3412de70cab652e3b4",
    arm: "864a15adda57e96c228dffe2d7c8b28546feb1c8a38d7610503ee702783b882e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
