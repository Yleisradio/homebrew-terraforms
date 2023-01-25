cask "terraform-0.14.0" do
  version "0.14.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_darwin_amd64.zip"
    sha256 "b0c216023e42e69c09b953653c22f0421a2d24a62c124cd89adf468165de70ea"
  end

  depends_on arch: [:x86_64]
end
