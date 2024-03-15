cask "terraform-0-10-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.10.0-beta1"

  arch = "amd64"
  sha256 "8170d52bd55bd80744aacd96ae8d87b39e29ed3d2d2853c9cb66ca62b5e295c6"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
