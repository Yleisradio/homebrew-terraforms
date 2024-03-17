cask "terraform-0-9-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.9.2"

  arch = "amd64"
  sha256 "33d9bbe1516a4085998c74d5a265aa0354d29a11eb56a21611dbcc806aec9c6f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
