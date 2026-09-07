cask "terraform-1-10-0-alpha20240619" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240619"
  sha256 arm:   "cd8095f2504979bfe9400d7e84a9c9bd14f16473637f5e11225399e5c46a5572",
         intel: "efe45d3bcfb289b6cf9bf8ca01a33917eaed3afb0065ef6c2f07948c7ba1ffe5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
