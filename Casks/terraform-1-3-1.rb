cask "terraform-1-3-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4282ebe6d1d72ace0d93e8a4bcf9a6f3aceac107966216355bb516b1c49cc203",
    arm: "f0514f29b08da2f39ba4fff0d7eb40093915c9c69ddc700b6f39b78275207d96"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
