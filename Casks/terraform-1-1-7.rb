cask "terraform-1-1-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.7"
  sha256 arm:   "8919ceee34f6bfb16a6e9ff61c95f4043c35c6d70b21de27e5a153c19c7eba9c",
         intel: "6e56eea328683541f6de0d5f449251a974d173e6d8161530956a20d9c239731a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
