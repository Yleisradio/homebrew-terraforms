cask "terraform-1-3-3" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.3"
  sha256 arm:   "51e94ecf88059e8a53c363a048b658230f560574f99b0d8396ebacead894d159",
         intel: "2b3cf653cd106becdea562b6c8d3f8939641e5626c5278729cbef81678fa9f42"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
