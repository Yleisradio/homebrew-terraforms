cask "terraform-1-1-5" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.5"
  sha256 arm:   "6e5a8d22343722dc8bfcf1d2fd7b742f5b46287f87171e8143fc9b87db32c3d4",
         intel: "dcf7133ebf61d195e432ddcb70e604bf45056163d960e991881efbecdbd7892b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
