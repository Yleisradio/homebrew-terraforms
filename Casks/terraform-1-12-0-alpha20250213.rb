cask "terraform-1-12-0-alpha20250213" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-alpha20250213"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "2ea2d8b8e15c0c2393d3610ddd678410db1a1d272b61222b63c63c4700bfc980",
    arm: "dae3f356930a342b5da5bd5b110eab80533e165bd01aad43c69956de3b2ca561"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
