cask "terraform-0.8.6" do
  version "0.8.6"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.8.6/terraform_0.8.6_darwin_amd64.zip"
    sha256 "0b80dedb16ab6583afcf66e9b03d3714fbfa44b827094420956d807b710e4fd6"
  end

  depends_on arch: [:x86_64]
end
