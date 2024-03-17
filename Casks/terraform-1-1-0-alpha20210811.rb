cask "terraform-1-1-0-alpha20210811" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.0-alpha20210811"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "bd9afe8033bda2b04e18d97d5bd0f77a9cd80747e9ff8aff4ab83263fd81d76c",
    arm: "22628eca35df6019891929f49466f2512bc0032c10014076c2b2e5637be6f8e4"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
