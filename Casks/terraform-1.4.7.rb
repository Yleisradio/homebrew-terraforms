cask "terraform-1.4.7" do
  version "1.4.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.4.7/terraform_1.4.7_darwin_amd64.zip"
    sha256 "603764c07862bd3a87fce193f8b9823383df22626b254f353c83511635763301"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.4.7/terraform_1.4.7_darwin_arm64.zip"
    sha256 "4b2ae04467469b923d038e6720ae1f92cb2adaa96b7ab08199c2fffee8b45baa"
  end

  depends_on arch: [:x86_64, :arm64]
end
