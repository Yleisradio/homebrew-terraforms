cask "terraform-1-0-5" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.0.5"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "51b481f2cc02651c14854f57dc0c43c3918b19b6fc5e687295b98beee5d20271",
    arm: "8fadd8bbcdcaf6452d9937af6b916572f481caabcc29ea9aac61c7f4759e133e"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
