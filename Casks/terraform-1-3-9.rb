cask "terraform-1-3-9" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.3.9"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "a73326ea8fb06f6976597e005f8047cbd55ac76ed1e517303d8f6395db6c7805",
    arm: "d8a59a794a7f99b484a07a0ed2aa6520921d146ac5a7f4b1b806dcf5c4af0525"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
