cask "terraform-1-5-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.5.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0484b5c7d5daa17cfff476f29b027398d805c00a8c276f884734b4c6fadd15ec",
    arm: "75c5632f221adbba38d569bdaeb6c3cb90b7f82e26b01e39b3b7e1c16bb0e4d4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
