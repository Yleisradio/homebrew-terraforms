cask "terraform-1-2-7" do
  arch arm: "arm64", intel: "amd64"

  version "1.2.7"
  sha256 arm:   "ec4e623914b411f8cc93a1e71396a1e7f1fe1e96bb2e532ba3e955d2ca5cc442",
         intel: "74e47b54ea78685be24c84e0e17b22b56220afcdb24ec853514b3863199f01e4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
