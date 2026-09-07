cask "terraform-1-15-0-alpha20260304" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-alpha20260304"
  sha256 arm:   "3180e0aecf4ad414be38cad247afd5191a73ffcec4520f2f8807c3870fbb4dfb",
         intel: "0929e727d7fcdab600a56e8983b2a04bc03550a8465a6b6d6ac9a35d1b43369c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
