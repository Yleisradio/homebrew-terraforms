cask "terraform-0-14-10" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.14.10"

  arch = "amd64"
  sha256 "ac56b87611ea4cff4b1f21d320d38a46dac0e4730d1d90509f46b0bcb2f5c50e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
