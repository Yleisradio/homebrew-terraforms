cask "terraform-1-1-2" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.2"
  sha256 arm:   "cc3bd03b72db6247c9105edfeb9c8f674cf603e08259075143ffad66f5c25a07",
         intel: "78faa76db5dc0ecfe4bf7c6368dbf5cca019a806f9d203580a24a4e0f8cd8353"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip"
  name "Terraform"
  homepage "https://www.terraform.io/"

  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
