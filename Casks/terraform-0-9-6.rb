cask "terraform-0-9-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.6"

  arch = "amd64"
  sha256 "71f53879c2fc33af57238cdb67a344d576ae3ae88f8db112122d433bd762788d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
