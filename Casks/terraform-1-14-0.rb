cask "terraform-1-14-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0"
  sha256 arm:   "57fde1cc2534a7e8c48aaae2ad2954084502852c25d731fc957e4b831f75e16e",
         intel: "bcb92ac63ab038ed633fe99a86553a9f4595d078dd607ad0b0145d7e65d153d1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
