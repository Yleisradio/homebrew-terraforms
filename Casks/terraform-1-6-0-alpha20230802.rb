cask "terraform-1-6-0-alpha20230802" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0-alpha20230802"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "f58e5cecc9a65539952efb49df0002084265b261cb68eb0186e38e4676a9bb23",
    arm: "11d07e1e4295f1b42c4ee75c198bd2c9c18842ff4132a907ecf9591bf80a0b04"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
