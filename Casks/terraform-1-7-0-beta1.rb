cask "terraform-1-7-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-beta1"
  sha256 arm:   "4960ff477109074c6ad7392435422bd29bbbb1b21ef3718979cda2440e9835bf",
         intel: "c396b2f31051a0dac6850b3c417eea1ded208c6c46baac16469c48624352a2a0"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
