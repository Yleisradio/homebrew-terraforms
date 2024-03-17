cask "terraform-0-8-7" do
  name "Terraform"
  homepage "https://www.terraform.io/"

  version "0.8.7"

  arch = "amd64"
  sha256 "ba53c7424bec5db7c01e0a5178ba5e295eb13669fb04fdae41576098baf88b75"

  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_#{arch}.zip",
    verified: "releases.hashicorp.com/terraform"


  # Binaries not installed as multiple versions are expected to coexist.
  # Normally the wanted version is selected with `chtf`.
  stage_only true
end
