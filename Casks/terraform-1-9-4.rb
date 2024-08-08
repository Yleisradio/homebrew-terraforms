cask "terraform-1-9-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "d23c34dbd84884913a939f34abfc46065f2794f43e1614d0f7b70af4e206ac8a",
    arm: "440865e068811f5573b900b6e9822e266c1e6074eb31daccc2537d1cf24a0dd7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
