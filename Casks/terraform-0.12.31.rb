cask "terraform-0.12.31" do
  version "0.12.31"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.31/terraform_0.12.31_darwin_amd64.zip"
    sha256 "794e736283b93b364d7f1c36ec8f47912ec6f6a0692b2108d0fb3908b5d3b5af"
  end

  depends_on arch: [:x86_64]
end
