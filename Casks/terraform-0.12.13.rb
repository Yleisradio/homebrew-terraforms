cask "terraform-0.12.13" do
  version "0.12.13"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_darwin_amd64.zip"
    sha256 "744dfa3c4f566cabddf2fa6b3b19fab06d512f3c654c09906e8acaaaa2388cfb"
  end

  depends_on arch: [:x86_64]
end
