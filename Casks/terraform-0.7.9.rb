cask "terraform-0.7.9" do
  version "0.7.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.9/terraform_0.7.9_darwin_amd64.zip"
    sha256 "960e0e79c9dcaa51fa349f923e62f46fd4b49a91dcb06677ab096918f6074e2e"
  end

  depends_on arch: [:x86_64]
end
