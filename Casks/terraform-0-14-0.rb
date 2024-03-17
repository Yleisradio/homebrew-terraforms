cask "terraform-0-14-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.0"

  arch = "amd64"
  sha256 "6bbf84885f15688c427726306331a2599af3041bb86d9330819d435db516e15c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
