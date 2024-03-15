cask "terraform-1-6-4" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.6.4"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "0a93865c56fac0cec9faa739fa81bf69fe58614e9e8d74c088b6c414055b5453",
    arm: "c3c6196b71946c7825d1e9a1d7d03be1c68b07fd4528a7bbf918f718c4164ffa"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
