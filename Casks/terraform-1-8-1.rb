cask "terraform-1-8-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.1"
  sha256 arm:   "27834a6450c4046af812dcc3faff3c0c56c8c499ca9990d7cd43ef7f844077ed",
         intel: "89aace89147ca00d5200282aa766866e32268e191d97aceca7629fc2379aaab9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
