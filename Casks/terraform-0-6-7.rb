cask "terraform-0-6-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.6.7"

  arch = "amd64"
  sha256 "fe54fa09af11a1375a2b85912fe416d494a52137be7c5b0b4aaae35d75b0d588"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
