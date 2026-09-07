cask "terraform-1-16-0-beta2" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.0-beta2"
  sha256 arm:   "98c252da7f470bd7d9a0a6c4815299bddf0c7a25cb6bc3fa0cfda755fd821e8e",
         intel: "2443413ff96bc9c2eef5d32b88605c412405844848f33700fbaa0a6aed33fe0f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
