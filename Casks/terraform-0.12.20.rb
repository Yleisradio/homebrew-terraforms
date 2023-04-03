cask "terraform-0.12.20" do
  version "0.12.20"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_darwin_amd64.zip"
    sha256 "67d143f187d0bc7293a40cbbf465b4fdd585669252c522a9b0b96544e0987c1d"
  end

  depends_on arch: [:x86_64]
end
