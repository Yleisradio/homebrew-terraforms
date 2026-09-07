cask "terraform-0-12-25" do
  version "0.12.25"
  sha256 "d3592d13da863f65b57be78f9ab264b3a738cc0b972c7fa02996d5932237e44d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
