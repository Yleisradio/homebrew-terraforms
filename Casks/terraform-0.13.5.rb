cask "terraform-0.13.5" do
  version "0.13.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_darwin_amd64.zip"
    sha256 "6ede2ffced90d7ad0050ac5ff4c617ef7f07d1d2522b6ba83a07e5e980c28775"
  end

  depends_on arch: [:x86_64]
end
