cask "terraform-1-5-0-alpha20230405" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.0-alpha20230405"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "67710a24862066a607f18aa9b8bad3c810b31fadbd3b4999395894f527a89f5d",
    arm: "b5e175ff971d6e58854dfc6a2388847372ba58f9b2abecf8ba1108be28181e63"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
