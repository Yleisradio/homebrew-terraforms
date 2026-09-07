cask "terraform-1-1-9" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.9"
  sha256 arm:   "39fac4be74462be86b2290dd09fe1092f73dfb48e2df92406af0e199cfa6a16c",
         intel: "685258b525eae94fb0b406faf661aa056d31666256bf28e625365a251cb89fdc"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
