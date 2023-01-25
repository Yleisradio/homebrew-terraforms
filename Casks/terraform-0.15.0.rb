cask "terraform-0.15.0" do
  version "0.15.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_darwin_amd64.zip"
    sha256 "394137bff715926be15b27abc867409b81a67c10efe8179a3298bb5cff4d8e61"
  end

  depends_on arch: [:x86_64]
end
