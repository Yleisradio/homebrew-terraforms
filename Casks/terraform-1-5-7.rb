cask "terraform-1-5-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.5.7"
  sha256 arm:   "db7c33eb1a446b73a443e2c55b532845f7b70cd56100bec4c96f15cfab5f50cb",
         intel: "b310ec0e626e9799000cfc8e30247cd827cf7f8030c8e0400257c7f111e93537"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
