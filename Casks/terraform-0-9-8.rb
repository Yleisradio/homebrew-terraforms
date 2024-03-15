cask "terraform-0-9-8" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.8"

  arch = "amd64"
  sha256 "f2f4e12bcb6e8bbd8876194221fbb79860ad700926d47a42654a354d70b06022"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
