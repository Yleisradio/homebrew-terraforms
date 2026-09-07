cask "terraform-1-5-0-rc1" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.0-rc1"
  sha256 arm:   "0974e0e234563004187fe1c83433d55103a00d4070ed1acb8558a79e82428aea",
         intel: "f99eddbdf9c003b5ba24293d2c7e1c283005e352f56c2242ed2dec5e90fa4466"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
