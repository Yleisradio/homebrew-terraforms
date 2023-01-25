cask "terraform-0.12.24" do
  version "0.12.24"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_darwin_amd64.zip"
    sha256 "c67a5870977372cf0761de57403abd0bec4d82a18e2cbac1b4e0f25d4bc4c838"
  end

  depends_on arch: [:x86_64]
end
