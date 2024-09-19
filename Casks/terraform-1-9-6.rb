cask "terraform-1-9-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.9.6"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "5b49e6a6fcd00cafccaad0ae869f218e862023c5a904286460cc0fe42bfb3eab",
    arm: "f106632f6f7df76587d7a194b1ceb40b029567861ee8af6baade3cdebce475f7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
