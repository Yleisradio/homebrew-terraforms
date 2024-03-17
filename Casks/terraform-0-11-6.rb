cask "terraform-0-11-6" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.6"

  arch = "amd64"
  sha256 "edbdde7ca769a5c7ca1c048bd5729b1f70d556b4ee61287dff5057660bc1f64d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
