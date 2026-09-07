cask "terraform-1-17-0-alpha20260729" do
  arch arm: "arm64", intel: "amd64"

  version "1.17.0-alpha20260729"
  sha256 arm:   "127c3ae62d38346c7403218e6f5548aaa2f7983195ef5c653f2aacb3047e6572",
         intel: "f4191486f47807a3e913c9c6689722d7d09d230958d36bd84c5ff3178dcc8a0c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
