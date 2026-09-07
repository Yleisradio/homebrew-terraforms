cask "terraform-1-10-1" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.1"
  sha256 arm:   "bae8bef4e19a404427a25e1ddc35eeff4ed9afb675c33e2988dfd47f1543ad3b",
         intel: "9e3e0127c7dbef8a34773820736acbb312a0727149a3b5df07b73f0cf859c261"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
