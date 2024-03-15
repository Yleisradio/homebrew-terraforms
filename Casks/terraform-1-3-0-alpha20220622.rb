cask "terraform-1-3-0-alpha20220622" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.0-alpha20220622"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2b6b1fcff71c20c408e1b3cbee8236645898e24e64006e6c999cb2ec9a6f610c",
    arm: "757eee385bd67ca1878ffd51e2e61c156027ea371510bd10aea3d8f532b27983"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
