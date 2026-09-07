cask "terraform-1-9-0-rc3" do
  arch arm: "arm64", intel: "amd64"

  version "1.9.0-rc3"
  sha256 arm:   "fe15c624708a09e27dccb8ff419a2924b5e8dd596262f60a43b94e4210aab25c",
         intel: "0c772674b4e684f2ff3d0d21a78e85eabad64293d1c657749de8780a8aa9db42"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
