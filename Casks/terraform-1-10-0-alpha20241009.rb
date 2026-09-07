cask "terraform-1-10-0-alpha20241009" do
  arch arm: "arm64", intel: "amd64"

  version "1.10.0-alpha20241009"
  sha256 arm:   "5196fb1f2bbe56ad3a7861610659dee4210d0175909d12dbf8e727482a11234a",
         intel: "bf1328042a231de3478a7cdd255cdb3c124bbd05c473b0619ba6d5c5bea5e481"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
