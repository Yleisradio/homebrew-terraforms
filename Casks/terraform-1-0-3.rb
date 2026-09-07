cask "terraform-1-0-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm:   "a16f8851e11fcc5b922c529169918b05d39ffd85557e6bbbcd7843cf07e47910",
         intel: "6e86dfff2f90ddc1232b38487613d5f7eab69f227d76c4337921517aaaa11c4f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
