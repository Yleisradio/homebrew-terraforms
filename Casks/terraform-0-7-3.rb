cask "terraform-0-7-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.7.3"

  arch = "amd64"
  sha256 "e0057e4f32e6490361611e3eb34e35f8b5314d861aa26fd9e89e1a7c4ab773bf"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
