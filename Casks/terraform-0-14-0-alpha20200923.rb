cask "terraform-0-14-0-alpha20200923" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.0-alpha20200923"

  arch = "amd64"
  sha256 "adc3dd2d8f4e53d66b09dd9ee9b57e48a60aab34e7bfc013867ed278648594ac"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
