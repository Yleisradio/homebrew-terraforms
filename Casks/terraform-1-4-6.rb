cask "terraform-1-4-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "5d8332994b86411b049391d31ad1a0785dfb470db8b9c50617de28ddb5d1f25d",
    arm: "30a2f87298ff9f299452119bd14afaa8d5b000c572f62fa64baf432e35d9dec1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
