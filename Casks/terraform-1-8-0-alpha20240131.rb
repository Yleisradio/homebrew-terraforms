cask "terraform-1-8-0-alpha20240131" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0-alpha20240131"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f5ff6ea01a93b45f3cc884c9d48d5e26c7933c0e8d176f4fe4ccc2892a096563",
    arm: "7eb7615bc6f3acc3f664a817cbf975374372249286672bc1b857788952fb66de"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
