cask "terraform-0-14-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.0-beta2"

  arch = "amd64"
  sha256 "b6bbb9b918dad1dabfcc8be5d0c143ef03d27f981b1af17470b45c04604a93cb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
