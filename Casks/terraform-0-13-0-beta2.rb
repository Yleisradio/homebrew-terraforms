cask "terraform-0-13-0-beta2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.0-beta2"

  arch = "amd64"
  sha256 "44c3afe6bb53020a82341c26ac36612a32a135163ff490aa778e9eefa53bf0f3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
