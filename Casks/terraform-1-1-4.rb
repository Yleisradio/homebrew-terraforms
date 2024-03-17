cask "terraform-1-1-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "4f3bc78fedd4aa17f67acc0db4eafdb6d70ba72392aaba65fe72855520f11f3d",
    arm: "5642b46e9c7fb692f05eba998cd4065fb2e48aa8b0aac9d2a116472fbabe34a1"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
