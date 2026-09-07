cask "terraform-1-4-0-alpha20221109" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.0-alpha20221109"
  sha256 arm:   "4537eb0228b27abb1bc1935e0ced1bb735b57d4e76a2f7d2ab243fe62fafd8c0",
         intel: "3c34e6b6f2afd4847bf6bc76f3dc5630df655d0469a699f3cdf4d0ee11c7505f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
