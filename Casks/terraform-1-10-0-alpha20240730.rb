cask "terraform-1-10-0-alpha20240730" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20240730"
  sha256 arm:   "26fb1e0cbb25cc542b0d08326dacd4cdb16e299c4bc427e58e78d8b077c4581c",
         intel: "143541bed78466f584366fd3dc6391fea30d07993962d594d9c06d29972bd397"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
