cask "terraform-1-10-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0"
  sha256 arm:   "1daedd25138836756fb3eb5cf1a85ab59d06f385a4e3b3bebd8151185bdea5cb",
         intel: "263c2a63dd6e11b4f5d062262ff8cbf8fad56460af69e5493f22f495b35c4ab5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
