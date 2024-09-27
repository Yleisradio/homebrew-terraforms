cask "terraform-1-10-0-alpha20240926" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240926"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "1e96586fdccfa030128b0ca3bb2d3aef09bbe581844e1fa574f56439113fe2b7",
    arm: "b385ac430138c9ef1c5a4e06c605f23fafb71d677efa6a7969a0ffba51cd1ca7"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
