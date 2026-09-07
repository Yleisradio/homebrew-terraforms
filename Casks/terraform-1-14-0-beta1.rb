cask "terraform-1-14-0-beta1" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-beta1"
  sha256 arm:   "d542b3d0e3107a29c7b590941a731782c81466044c91eeb7193fa217065ea1d5",
         intel: "2804c31643de5e02739c281732b7e37bb08a1e555b2bbd5853b2437891130f22"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
