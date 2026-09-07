cask "terraform-1-3-0-alpha20220608" do
  arch arm: "arm64", intel: "amd64"

  version "1.3.0-alpha20220608"
  sha256 arm:   "1662a8e2b86c920c39ccf298bce464f7d85b05f16670b06fd370698f849d7f60",
         intel: "5917598e8fadf9d77e0201c0327e33a6123d6448530724417f4371a25944ed99"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
