cask "terraform-1-11-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.11.0"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "24b45c11c70160f31f7bf3107173b8e9611c072eba3c0cd0b608fc6ad937eaf3",
    arm: "ce78084f1ad41c008da242faf84f7653b4f00a4b8443ef2bb5724b135cc68766"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
