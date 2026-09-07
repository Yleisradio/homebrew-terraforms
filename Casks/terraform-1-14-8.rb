cask "terraform-1-14-8" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.8"
  sha256 arm:   "5593670a2d42323847bfb216db17c73a44df201a62f7587928bae16adeabba23",
         intel: "26dd7593d22e9d99ec09380f0869718f649be7b7f954d888611335e6a84961f8"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
