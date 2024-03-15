cask "terraform-1-2-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.7"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "74e47b54ea78685be24c84e0e17b22b56220afcdb24ec853514b3863199f01e4",
    arm: "ec4e623914b411f8cc93a1e71396a1e7f1fe1e96bb2e532ba3e955d2ca5cc442"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
