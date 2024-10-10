cask "terraform-1-10-0-alpha20241009" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.10.0-alpha20241009"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "bf1328042a231de3478a7cdd255cdb3c124bbd05c473b0619ba6d5c5bea5e481",
    arm: "5196fb1f2bbe56ad3a7861610659dee4210d0175909d12dbf8e727482a11234a"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
