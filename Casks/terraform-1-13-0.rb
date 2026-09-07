cask "terraform-1-13-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.13.0"
  sha256 arm:   "7c36802149ebe94a5ac435539baa16f68304587386c83617977ba23fa96efcb1",
         intel: "025c9ba20c542a22197157bf4a69cfbc8b3e43a9b69e9884d8ffcf9349cfdf0b"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
