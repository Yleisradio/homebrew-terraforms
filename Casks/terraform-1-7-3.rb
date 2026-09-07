cask "terraform-1-7-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.3"
  sha256 arm:   "85cddfd303c45989f0948a70ae03bb30f66c6e6106383697fe85ccd739137ca6",
         intel: "4787f5a422439d3b277a889b159981e88049f48bcf9e41e70481620567a7fd9c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
