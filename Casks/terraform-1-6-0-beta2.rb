cask "terraform-1-6-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.6.0-beta2"
  sha256 arm:   "cacd0afbc7939f337fe20548f37d6553566e64a125724a0984d255af6d2a5225",
         intel: "11271e7866bac900eebf25e585d4b6430deb3642d8f714009efcccfb36f5402a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
