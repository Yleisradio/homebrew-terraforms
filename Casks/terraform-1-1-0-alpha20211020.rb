cask "terraform-1-1-0-alpha20211020" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20211020"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "c7141fa2ad25a856155284c79b295e2054f417a3bfca88508419dba058294e10",
    arm: "0302cb342a1f32d821929f130637af1b44dfd1732323c8bbed8a007d90a3396c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
