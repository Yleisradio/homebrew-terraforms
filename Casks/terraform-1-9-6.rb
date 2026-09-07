cask "terraform-1-9-6" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.6"
  sha256 arm:   "f106632f6f7df76587d7a194b1ceb40b029567861ee8af6baade3cdebce475f7",
         intel: "5b49e6a6fcd00cafccaad0ae869f218e862023c5a904286460cc0fe42bfb3eab"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
