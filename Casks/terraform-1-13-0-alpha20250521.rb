cask "terraform-1-13-0-alpha20250521" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-alpha20250521"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a3532cd2740d411a55b403996eedf4ba461b22b6b7a186ac539a93cd64727d63",
    arm: "9049dec219d0c4fef35903a05b64e7036f6a4314e68a453406ed77c28c149bd9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
