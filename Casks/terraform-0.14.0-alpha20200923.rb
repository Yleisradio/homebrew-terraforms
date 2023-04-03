cask "terraform-0.14.0-alpha20200923" do
  version "0.14.0-alpha20200923"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200923/terraform_0.14.0-alpha20200923_darwin_amd64.zip"
    sha256 "adc3dd2d8f4e53d66b09dd9ee9b57e48a60aab34e7bfc013867ed278648594ac"
  end

  depends_on arch: [:x86_64]
end
