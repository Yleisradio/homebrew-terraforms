cask "terraform-1-2-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.3"
  sha256 arm:   "6f06debac2ac54951464bf490e1606f973ab53ad8ba5decea76646e8f9309512",
         intel: "bdc22658463237530dc120dadb0221762d9fb9116e7a6e0dc063d8ae649c431e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
