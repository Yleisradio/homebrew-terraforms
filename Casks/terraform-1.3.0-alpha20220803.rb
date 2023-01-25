cask "terraform-1.3.0-alpha20220803" do
  version "1.3.0-alpha20220803"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_amd64.zip"
    sha256 "e745b07e19e5a58dac739d4f7f6945674d0c7f2fe2bde8d35ed214a2ffb657b5"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.3.0-alpha20220803/terraform_1.3.0-alpha20220803_darwin_arm64.zip"
    sha256 "d772192d847a94c55faa116727786d71cdeb16bb5602c3f30b1ddfd9ec56dc6d"
  end

  depends_on arch: [:x86_64, :arm64]
end
