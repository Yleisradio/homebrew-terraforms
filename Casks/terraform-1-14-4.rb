cask "terraform-1-14-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.4"
  sha256 arm:   "dc4ee56edfde4fb6d578783292b5fa126d624803aa9326d03da5466ef59d4dbd",
         intel: "367dfc3fd689db10817f96cede1f737c88300f34e5a783c90cb9874973031832"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
