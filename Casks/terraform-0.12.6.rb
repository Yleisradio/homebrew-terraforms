cask "terraform-0.12.6" do
  version "0.12.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_darwin_amd64.zip"
    sha256 "7168dfa057d9aed7ea3f111d87294f263e341c8b848e776bc13d169ddf2926c7"
  end

  depends_on arch: [:x86_64]
end
