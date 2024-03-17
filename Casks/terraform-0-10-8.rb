cask "terraform-0-10-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.8"

  arch = "amd64"
  sha256 "3f05acdf0a9e04ba7e3bda18521feb0b310462dcce62c454854a40519b1695ed"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
