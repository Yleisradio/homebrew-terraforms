cask "terraform-1-15-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.6"
  sha256 arm:   "8d4c6791a744332bc7ca3962c61ab2ed8e5d25a7299f176f5edffb9cb525e85f",
         intel: "ec7e3c2d314b5b0c975b6f7f8c6094d1806cb98f64f79e6f971cc87f786eb6e0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
