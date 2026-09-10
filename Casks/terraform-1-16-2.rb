cask "terraform-1-16-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.16.2"
  sha256 arm:   "7c0a0b31c8aa541351369bcf7b62a7289fbc21de7e577669aeba6d42f4e6cc41",
         intel: "275f50ed172af2f23e15a2ce7e3251aac8b17b768f2e62eceb81c353cd106abf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
