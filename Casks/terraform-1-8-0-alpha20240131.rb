cask "terraform-1-8-0-alpha20240131" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-alpha20240131"
  sha256 arm:   "7eb7615bc6f3acc3f664a817cbf975374372249286672bc1b857788952fb66de",
         intel: "f5ff6ea01a93b45f3cc884c9d48d5e26c7933c0e8d176f4fe4ccc2892a096563"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
