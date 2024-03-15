cask "terraform-0-15-0-alpha20210107" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.15.0-alpha20210107"

  arch = "amd64"
  sha256 "b5a95586cead146ef532642079dd3e4bb93f0ab785b5bc57c5c6259eb0da2d37"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
