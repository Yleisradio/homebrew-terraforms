cask "terraform-1-12-0-rc2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-rc2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4bfd8810fb355fd86fba45aae73def8670c5cba99136199079b95777de406422",
    arm: "2f760705eb7cd82de4b472cdb2f5933eefb7f8a1ade131dae2b09566620ff3f6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
