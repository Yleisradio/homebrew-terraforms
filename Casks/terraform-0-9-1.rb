cask "terraform-0-9-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.1"

  arch = "amd64"
  sha256 "4140c52917da91a276db34f01e5efc27d07b6e1deeede4137625fccf7bfabb83"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
