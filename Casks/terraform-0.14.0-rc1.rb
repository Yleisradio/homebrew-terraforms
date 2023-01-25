cask "terraform-0.14.0-rc1" do
  version "0.14.0-rc1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-rc1/terraform_0.14.0-rc1_darwin_amd64.zip"
    sha256 "578803405810e49a23ddb694299062561b456f69d7a3a0162aab13fdba3aef17"
  end

  depends_on arch: [:x86_64]
end
