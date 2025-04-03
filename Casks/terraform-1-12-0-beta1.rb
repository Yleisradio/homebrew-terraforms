cask "terraform-1-12-0-beta1" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.12.0-beta1"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "312847595c98f4660dd043a8623d92c0d7b326aa33b730165b17fb0078730f50",
    arm: "61cdd53201fd5724dc056a3ffc440111e67cb2b96715bbccaba70885e9fd218c"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
