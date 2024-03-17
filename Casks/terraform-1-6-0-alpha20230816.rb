cask "terraform-1-6-0-alpha20230816" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.0-alpha20230816"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "265dc14d93397f0225fcc653dffef229eb31efe5529eae38cc7a4421da3b81f0",
    arm: "e8df6d86281175708a09ae80aaa82ff7845fc930b368b23d7630f0a45b696511"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
