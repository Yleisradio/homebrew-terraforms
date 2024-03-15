cask "terraform-0-6-14" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.14"

  arch = "amd64"
  sha256 "9334f55a549d5cb3c583430be15e73b407bd7e115dc53db290381a482da17788"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
