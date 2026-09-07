cask "terraform-1-11-0" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0"
  sha256 arm:   "ce78084f1ad41c008da242faf84f7653b4f00a4b8443ef2bb5724b135cc68766",
         intel: "24b45c11c70160f31f7bf3107173b8e9611c072eba3c0cd0b608fc6ad937eaf3"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
