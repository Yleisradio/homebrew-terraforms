cask "terraform-0-9-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.10"

  arch = "amd64"
  sha256 "8d55db3e114a72ec2cefb2e928af485c10f61c2df8121847972f73ca301fe5c6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
