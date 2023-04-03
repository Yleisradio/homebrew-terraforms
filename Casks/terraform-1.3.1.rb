cask "terraform-1.3.1" do
  version "1.3.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_amd64.zip"
    sha256 "4282ebe6d1d72ace0d93e8a4bcf9a6f3aceac107966216355bb516b1c49cc203"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.1/terraform_1.3.1_darwin_arm64.zip"
    sha256 "f0514f29b08da2f39ba4fff0d7eb40093915c9c69ddc700b6f39b78275207d96"
  end

  depends_on arch: [:x86_64, :arm64]
end
