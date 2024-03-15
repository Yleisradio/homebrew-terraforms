cask "terraform-1-1-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "dcf7133ebf61d195e432ddcb70e604bf45056163d960e991881efbecdbd7892b",
    arm: "6e5a8d22343722dc8bfcf1d2fd7b742f5b46287f87171e8143fc9b87db32c3d4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
