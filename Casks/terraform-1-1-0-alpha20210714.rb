cask "terraform-1-1-0-alpha20210714" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20210714"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a848f98f2eaa2ef6816d558bf63badccfa16872520ad663ccdc37477dcdefb2c",
    arm: "1eda0c53c37ae48714168552a1ed90636b7838da38d39e33a27ca87fa23cda33"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
