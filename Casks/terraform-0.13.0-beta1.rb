cask "terraform-0.13.0-beta1" do
  version "0.13.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.0-beta1/terraform_0.13.0-beta1_darwin_amd64.zip"
    sha256 "e04f099544df4725b16e4c8835c08f880cf960441bebd9baea868ea4d39f6f6f"
  end

  depends_on arch: [:x86_64]
end
