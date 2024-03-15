cask "terraform-1-4-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.4.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "89bdb242bfacf24167f365ef7a3bf0ad0e443ddd27ebde425fb71d77ce1a2597",
    arm: "20b9d484bf99ada6c0de89316176ba33f7c87f64c0738991188465147bba221b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
