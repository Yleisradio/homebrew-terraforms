cask "terraform-1-10-0-alpha20240814" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20240814"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "5926f9b023c85c2d768306464226134c368d7845ec595269a232a919122777aa",
    arm: "9007068df33684ff3620ba80b03612bddb1785baf7380b01287576fb8056803d"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
