cask "terraform-1.1.0-alpha20210728" do
  version "1.1.0-alpha20210728"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_amd64.zip"
    sha256 "bbdfd6588598b96273f1c79f3c67ceafdbf0095f58bfe8abf5cfeae5650387a8"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210728/terraform_1.1.0-alpha20210728_darwin_arm64.zip"
    sha256 "261123d44899baaa8147a97978651b41d7f3b5d8f43f470ee01e0e16bb4b38a9"
  end

  depends_on arch: [:x86_64, :arm64]
end
