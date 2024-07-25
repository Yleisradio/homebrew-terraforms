cask "terraform-1-9-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "858f851ccb786faa7e4f098707d66d77a6b5e6028b75e82cdf6bda68b93922a9",
    arm: "168cfeb339dbbfea6be651573ec168e6ca08bab79a4fc0474681eee1e9a95de9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
