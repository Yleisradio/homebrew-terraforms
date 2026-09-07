cask "terraform-1-9-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.3"
  sha256 arm:   "168cfeb339dbbfea6be651573ec168e6ca08bab79a4fc0474681eee1e9a95de9",
         intel: "858f851ccb786faa7e4f098707d66d77a6b5e6028b75e82cdf6bda68b93922a9"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
