cask "terraform-1-13-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.13.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "025c9ba20c542a22197157bf4a69cfbc8b3e43a9b69e9884d8ffcf9349cfdf0b",
    arm: "7c36802149ebe94a5ac435539baa16f68304587386c83617977ba23fa96efcb1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
