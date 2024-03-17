cask "terraform-0-4-0" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.4.0"

  arch = "amd64"
  sha256 "eba9a10b11d572bc5146c1d01353193ba45af2683a0977db09e7b18dff079398"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
