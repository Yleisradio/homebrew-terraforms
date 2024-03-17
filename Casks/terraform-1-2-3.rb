cask "terraform-1-2-3" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.2.3"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "bdc22658463237530dc120dadb0221762d9fb9116e7a6e0dc063d8ae649c431e",
    arm: "6f06debac2ac54951464bf490e1606f973ab53ad8ba5decea76646e8f9309512"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
