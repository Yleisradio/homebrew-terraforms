cask "terraform-0.13.2" do
  version "0.13.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_darwin_amd64.zip"
    sha256 "e6acad92937713255227030559d49b1df18d75abf2add087906f4f47ec6fa585"
  end

  depends_on arch: [:x86_64]
end
