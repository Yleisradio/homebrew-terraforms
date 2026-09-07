cask "terraform-0-14-0-beta2" do
  version "0.14.0-beta2"
  sha256 "b6bbb9b918dad1dabfcc8be5d0c143ef03d27f981b1af17470b45c04604a93cb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
