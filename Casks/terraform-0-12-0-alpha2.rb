cask "terraform-0-12-0-alpha2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0-alpha2"

  arch = "amd64"
  sha256 "859fa4459f8cc8b4cda026b71cd7c8011fafc765e570fbdf3abe9fbcad44d59c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
