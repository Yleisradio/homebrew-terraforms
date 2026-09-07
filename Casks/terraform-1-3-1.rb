cask "terraform-1-3-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.1"
  sha256 arm:   "f0514f29b08da2f39ba4fff0d7eb40093915c9c69ddc700b6f39b78275207d96",
         intel: "4282ebe6d1d72ace0d93e8a4bcf9a6f3aceac107966216355bb516b1c49cc203"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
