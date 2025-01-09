cask "terraform-1-10-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "3e3d54a96b62b205636ce0fa9b64b85c23cb7e8ad0d63eb74d70080ff1ebfa3e",
    arm: "3264fe6a903665ef91d18eebd99c494976f9d96f5dac603e4f1e283682404009"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
