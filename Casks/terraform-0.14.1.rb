cask "terraform-0.14.1" do
  version "0.14.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.1/terraform_0.14.1_darwin_amd64.zip"
    sha256 "3211e5858a7cf2f81f46a3ff2fa577c70998e0af22b589eb4cfa8057fa27f576"
  end

  depends_on arch: [:x86_64]
end
