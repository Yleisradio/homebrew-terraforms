cask "terraform-1-9-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "047c98b6cc7e4ecce51a02a02b0e9596dd5d94034756ba6a42fe4e5c6f16e4c0",
    arm: "6767c4302a1cf164d92091f66bd399732bff681e4ae9f60533a05fc3449d227d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
