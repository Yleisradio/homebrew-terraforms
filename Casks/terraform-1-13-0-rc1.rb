cask "terraform-1-13-0-rc1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0-rc1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "946b03b24b58e035bf486e96cba7c5df57e74f7597b3b21f3efb6891ef73e1a7",
    arm: "003efae168bf87c9dec1f77a7f53be7af17aa009ac58bd4f160a90468bfc08c2"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
