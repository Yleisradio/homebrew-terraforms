cask "terraform-1-14-0-alpha20250813" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0-alpha20250813"
  sha256 arm:   "3f33b7800fdd6dc408832a8c4ebed344599d937e8072c0a0cac3d8fcbeba975a",
         intel: "7c5f0bc4d2df86e7378937e5ddeba6c2edc41a9b9103af882fb28ba1d7d8734f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
