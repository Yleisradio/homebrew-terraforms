cask "terraform-1.3.8" do
  version "1.3.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_darwin_amd64.zip"
    sha256 "1a27a6fac31ecb05de610daf61a29fe83d304d7c519d773afbf56c11c3b6276b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_darwin_arm64.zip"
    sha256 "873b05ac81645cd7289d6ccfd3e73d4735af1a453f2cd19da0650bdabf7d2eb6"
  end

  depends_on arch: [:x86_64, :arm64]
end
