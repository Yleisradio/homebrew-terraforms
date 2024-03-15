cask "terraform-0-4-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.4.1"

  arch = "amd64"
  sha256 "08bb2eaa5b4eae89963e5ed1598689d95d220c0cafb59bbd5f266f8e326ac944"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
