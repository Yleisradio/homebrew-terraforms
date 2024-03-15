cask "terraform-0-11-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.0-rc1"

  arch = "amd64"
  sha256 "c7bbc03a40c089077e77befb3405c3fdf456f46e7b3bdafc50e48bfcc6f7b5a5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
