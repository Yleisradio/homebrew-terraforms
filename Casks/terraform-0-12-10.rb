cask "terraform-0-12-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.10"

  arch = "amd64"
  sha256 "70692a1221848c8a6f29972e89eaaf400ecc2aa33708b9ed14a17957e3845533"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
