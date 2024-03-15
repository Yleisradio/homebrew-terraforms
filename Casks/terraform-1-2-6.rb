cask "terraform-1-2-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "d896d2776af8b06cd4acd695ad75913040ce31234f5948688fd3c3fde53b1f75",
    arm: "c88ceb34f343a2bb86960e32925c5ec43b41922ee9ede1019c5cf7d7b4097718"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
