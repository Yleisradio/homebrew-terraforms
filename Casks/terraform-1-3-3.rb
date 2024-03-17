cask "terraform-1-3-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2b3cf653cd106becdea562b6c8d3f8939641e5626c5278729cbef81678fa9f42",
    arm: "51e94ecf88059e8a53c363a048b658230f560574f99b0d8396ebacead894d159"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
