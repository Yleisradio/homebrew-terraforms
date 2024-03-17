cask "terraform-1-7-0-alpha20231025" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.7.0-alpha20231025"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "53d8dd65dd17f5f6294e4f6defc70c336cd2363e2ddf8edde16a626dbdc7cf23",
    arm: "b6be241258c93a2dfd28a09535c6a5da79b6df1d26a7a2d0738239f128e724a5"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
