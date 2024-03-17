cask "terraform-0-12-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.12.0-beta1"

  arch = "amd64"
  sha256 "2da57018c25ada511b7131d85257f534030eddf23b347663af4c4ca89d3d9220"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
