cask "terraform-1-11-0-alpha20241106" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0-alpha20241106"
  sha256 arm:   "907c73155243390e9cbbe0ac94b81d5bde7fb40a822c554468b5f56eedcc96b8",
         intel: "6e6a549cb32bed43b9d117a282874b804966d8678c54164c84f09190fb9a0a01"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
