cask "terraform-0-6-12" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.12"

  arch = "amd64"
  sha256 "eaa50e05a88ef83a9ba18a3768932f4d530ce1b710b29ae29992f94addac0bfb"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
