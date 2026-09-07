cask "terraform-1-10-0-alpha20240717" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240717"
  sha256 arm:   "864a15adda57e96c228dffe2d7c8b28546feb1c8a38d7610503ee702783b882e",
         intel: "96172fff96da153c0e08a748ddfb5b566978157262c52f3412de70cab652e3b4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
