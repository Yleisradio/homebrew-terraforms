cask "terraform-1-8-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1aee4f880706edf98efb972d4f5cec2cd4c23904c17a26d51af6326d6f06a64e",
    arm: "abfb06eb80f1acd19ab8a01f6d24a4a5f99ba9b628c3b00a3b0c898709eea3b3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
