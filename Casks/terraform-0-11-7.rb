cask "terraform-0-11-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.11.7"

  arch = "amd64"
  sha256 "6514a8fe5a344c5b8819c7f32745cd571f58092ffc9bbe9ea3639799b97ced5f"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
