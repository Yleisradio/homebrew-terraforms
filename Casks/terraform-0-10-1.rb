cask "terraform-0-10-1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.1"

  arch = "amd64"
  sha256 "5aae5125140b6cb39532360bd725fd33a9224b8358140291ff1d34a086dd646b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
