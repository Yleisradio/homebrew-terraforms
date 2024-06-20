cask "terraform-1-10-0-alpha20240619" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240619"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "efe45d3bcfb289b6cf9bf8ca01a33917eaed3afb0065ef6c2f07948c7ba1ffe5",
    arm: "cd8095f2504979bfe9400d7e84a9c9bd14f16473637f5e11225399e5c46a5572"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
