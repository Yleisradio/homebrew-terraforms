cask "terraform-1-8-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "89aace89147ca00d5200282aa766866e32268e191d97aceca7629fc2379aaab9",
    arm: "27834a6450c4046af812dcc3faff3c0c56c8c499ca9990d7cd43ef7f844077ed"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
