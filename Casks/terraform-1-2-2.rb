cask "terraform-1-2-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1d22663c1ab22ecea774ae63aee21eecfee0bbc23b953206d889a5ba3c08525a",
    arm: "b87716b55a3b10cced60db5285bae57aee9cc0f81c555dccdc4f54f62c2a3b60"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
