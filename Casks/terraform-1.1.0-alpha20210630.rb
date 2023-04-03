cask "terraform-1.1.0-alpha20210630" do
  version "1.1.0-alpha20210630"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210630/terraform_1.1.0-alpha20210630_darwin_amd64.zip"
    sha256 "bd8d4a966661875b5c38e7d77a5aabcabb1bd98630c014a4626cbc4b2f8b8f9e"
  end

  depends_on arch: [:x86_64]
end
