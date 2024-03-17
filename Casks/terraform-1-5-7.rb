cask "terraform-1-5-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.7"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "b310ec0e626e9799000cfc8e30247cd827cf7f8030c8e0400257c7f111e93537",
    arm: "db7c33eb1a446b73a443e2c55b532845f7b70cd56100bec4c96f15cfab5f50cb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
