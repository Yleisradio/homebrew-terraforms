cask "terraform-1-10-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "68bd28cfe27b8720ec8d283c899a5275bedb53ea6d8f31291409464e476d4aa9",
    arm: "7328910f45db254a59e4ccc6906ad3a595775a2aedd74395978f2a81c9890137"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
