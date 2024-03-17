cask "terraform-1-1-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.9"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "685258b525eae94fb0b406faf661aa056d31666256bf28e625365a251cb89fdc",
    arm: "39fac4be74462be86b2290dd09fe1092f73dfb48e2df92406af0e199cfa6a16c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
