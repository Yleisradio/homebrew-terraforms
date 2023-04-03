cask "terraform-1.1.0" do
  version "1.1.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_amd64.zip"
    sha256 "6e0ba9afb8795a544e70dc0459f0095fea7df15e38f5d88a7dd3f620d50f8bfe"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_arm64.zip"
    sha256 "7955e173c7eadb87123fc0633c3ee67d5ba3b7d6c7f485fe803efed9f99dce54"
  end

  depends_on arch: [:x86_64, :arm64]
end
