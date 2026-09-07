cask "terraform-1-4-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.4.3"
  sha256 arm:   "20b9d484bf99ada6c0de89316176ba33f7c87f64c0738991188465147bba221b",
         intel: "89bdb242bfacf24167f365ef7a3bf0ad0e443ddd27ebde425fb71d77ce1a2597"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
