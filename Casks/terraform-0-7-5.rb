cask "terraform-0-7-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.5"

  arch = "amd64"
  sha256 "87cae476176b2f4416e5e0eb6c46ff218dd62201c31d3a3dfc16c08849d01b03"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
