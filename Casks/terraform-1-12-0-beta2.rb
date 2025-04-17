cask "terraform-1-12-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-beta2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "808446387aae00774e965f152ed47f4ac4f3195dc21e58c2ac3529245634bcf8",
    arm: "562a9bfbbfb4b721b699fb2b3a3ffb8088568a7cbba508263f84867cb730bb43"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
