cask "terraform-1-10-0-alpha20240828" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240828"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "317e01ad847eb3af06c4b67be6a99faa272198793e1825ba760c7511c27491a3",
    arm: "cd9a9921a14302cd995da9e96ab45e647b734bf32ba26ace9defe8d22302df34"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
