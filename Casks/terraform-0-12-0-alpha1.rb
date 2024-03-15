cask "terraform-0-12-0-alpha1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0-alpha1"

  arch = "amd64"
  sha256 "2797b82e22c5557da604b6b727cb8112844a92c81b16840980a43ed78d9e0512"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
