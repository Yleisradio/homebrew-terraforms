cask "terraform-0-13-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.13.1"

  arch = "amd64"
  sha256 "8c9bab51223e7039572763326267c1989d1727f552b3728f586cfa868b01b537"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
