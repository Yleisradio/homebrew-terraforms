cask "terraform-1-9-4" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.4"
  sha256 arm:   "440865e068811f5573b900b6e9822e266c1e6074eb31daccc2537d1cf24a0dd7",
         intel: "d23c34dbd84884913a939f34abfc46065f2794f43e1614d0f7b70af4e206ac8a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
