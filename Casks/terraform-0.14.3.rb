cask "terraform-0.14.3" do
  version "0.14.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.3/terraform_0.14.3_darwin_amd64.zip"
    sha256 "577f5bdb4dc0828737389b634b07895e971c7860b1e01bc765fdd9563c5ce1a4"
  end

  depends_on arch: [:x86_64]
end
