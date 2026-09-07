cask "terraform-1-7-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.7.0-rc2"
  sha256 arm:   "645b8da5c5cbf8b9a2ce195e7a419ee7c6850d321df9798aea770b1f614408c6",
         intel: "eb63e7f64cc108897b7429866c3f94c966fec007038f7355728218cd3ef86739"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
