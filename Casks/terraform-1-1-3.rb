cask "terraform-1-1-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.3"
  sha256 arm:   "02ba769bb0a8d4bc50ff60989b0f201ce54fd2afac2fb3544a0791aca5d3f6d5",
         intel: "016bab760c96d4e64d2140a5f25c614ccc13c3fe9b3889e70c564bd02099259f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
