cask "terraform-1-1-2" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "1.1.2"

  arch intel: "amd64", arm: "arm64"

  sha256 intel: "78faa76db5dc0ecfe4bf7c6368dbf5cca019a806f9d203580a24a4e0f8cd8353",
    arm: "cc3bd03b72db6247c9105edfeb9c8f674cf603e08259075143ffad66f5c25a07"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
