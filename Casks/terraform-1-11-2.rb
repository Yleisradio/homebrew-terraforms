cask "terraform-1-11-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.2"
  sha256 arm:   "e1de9cfa8f4b9cf31ce5f88fe4c55e1939cb2d2f23480b1520a37b596cd75414",
         intel: "1c3d0e2a35667e4c45d16df0afe5001b36958b647ddf2276f60691a42b3eff60"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
