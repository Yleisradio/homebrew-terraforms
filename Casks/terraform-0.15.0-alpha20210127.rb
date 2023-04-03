cask "terraform-0.15.0-alpha20210127" do
  version "0.15.0-alpha20210127"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210127/terraform_0.15.0-alpha20210127_darwin_amd64.zip"
    sha256 "ee7cf15916da97bd0959b2928bd1c23afd9d4e6a06a9529ee398d79dd490a452"
  end

  depends_on arch: [:x86_64]
end
