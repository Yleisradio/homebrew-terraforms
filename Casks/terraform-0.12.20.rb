cask "terraform-0.12.20" do
  version "0.12.20"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_darwin_amd64.zip"
    sha256 "9e2ef974618402b70d4491f50701621e1a9f1cb32862592f0af3fee12324d378"
  end

  depends_on arch: [:x86_64]
end
