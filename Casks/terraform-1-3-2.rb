cask "terraform-1-3-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "3639461bbc712dc130913bbe632afb449fce8c0df692429d311e7cb808601901",
    arm: "80480acbfee2e2d0b094f721f7568a40b790603080d6612e19b797a16b8ba82d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
