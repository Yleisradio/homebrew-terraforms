cask "terraform-1-3-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.2"
  sha256 arm:   "80480acbfee2e2d0b094f721f7568a40b790603080d6612e19b797a16b8ba82d",
         intel: "3639461bbc712dc130913bbe632afb449fce8c0df692429d311e7cb808601901"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
