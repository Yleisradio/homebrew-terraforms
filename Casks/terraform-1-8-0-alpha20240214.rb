cask "terraform-1-8-0-alpha20240214" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.8.0-alpha20240214"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "b8093f8770eba6e22879941d59f020bbf315ac73b7ee8409820fc66b2e7fffe7",
    arm: "47c6f59a38c3f53eb4d2e239dac8528507fd75cb6f98fa2bdedb47eb6b0c081c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
