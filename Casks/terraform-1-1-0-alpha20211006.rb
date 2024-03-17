cask "terraform-1-1-0-alpha20211006" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20211006"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "11eddb6bd353f801e0e0b38d29859e31897eac404285d60424611d6fa2ddda33",
    arm: "fff8eceebfef30eeb52ca153033f69d7dd0925951deb42b016ad84c04aa7f643"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
