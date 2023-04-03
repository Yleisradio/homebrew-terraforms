cask "terraform-1.3.6" do
  version "1.3.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_amd64.zip"
    sha256 "13881fe0100238577394243a90c0631783aad21b77a9a7ee830404f86c0d37bb"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_darwin_arm64.zip"
    sha256 "dbff0aeeaeee877c254f5414bef5c9d186e159aa0019223aac678abad9442c53"
  end

  depends_on arch: [:x86_64, :arm64]
end
