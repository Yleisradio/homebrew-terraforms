cask "terraform-1-15-0-rc2" do
  arch arm: "arm64", intel: "amd64"

  version "1.15.0-rc2"
  sha256 arm:   "fa46ca84c5d775b58917b374222bfbf93186856e2380d2d449a198928812416b",
         intel: "45cba3c93b5fc4eb8bd42436009c4b3bcbf33e607330be736cb34cbe9de9638a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
