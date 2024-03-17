cask "terraform-0-12-25" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.25"

  arch = "amd64"
  sha256 "d3592d13da863f65b57be78f9ab264b3a738cc0b972c7fa02996d5932237e44d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
