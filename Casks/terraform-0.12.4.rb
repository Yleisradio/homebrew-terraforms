cask "terraform-0.12.4" do
  version "0.12.4"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.4/terraform_0.12.4_darwin_amd64.zip"
    sha256 "e19691d775849888a0695a07e52a884dc617ca2100759eca5bbe4d0f428a7bc3"
  end

  depends_on arch: [:x86_64]
end
