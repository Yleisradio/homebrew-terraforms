cask "terraform-1-8-0-alpha20240216" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0-alpha20240216"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "caf152a2291ab4a77859c563f4fc1da2924ab2af65c0c9c37f24ef5eccbfe883",
    arm: "928fc218cab93d8e937ccc6380c8382b1e8d0f851b10d9502cf25eb087a13d3c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
