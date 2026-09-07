cask "terraform-1-8-0-alpha20240214" do
  arch arm: "arm64", intel: "amd64"

  version "1.8.0-alpha20240214"
  sha256 arm:   "47c6f59a38c3f53eb4d2e239dac8528507fd75cb6f98fa2bdedb47eb6b0c081c",
         intel: "b8093f8770eba6e22879941d59f020bbf315ac73b7ee8409820fc66b2e7fffe7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
