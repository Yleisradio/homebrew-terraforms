cask "terraform-0-11-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.2"

  arch = "amd64"
  sha256 "ff5c3c4bcfe84e011b96a2232704b2db196383ce5d4a32e47956c883ddc94bac"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
