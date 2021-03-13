cask "terraform-0.13.2" do
  version "0.13.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_darwin_amd64.zip"
    sha256 "7af2f9c03e8687c87e7798178a2dac9a3061955eb19f0f69501475e017b8d8f6"
  end

  depends_on arch: [:x86_64]
end
