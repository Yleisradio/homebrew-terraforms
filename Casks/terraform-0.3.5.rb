cask "terraform-0.3.5" do
  version "0.3.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.3.5/terraform_0.3.5_darwin_amd64.zip"
    sha256 "d583d58719951a5c3a06eec38390fe31bef7645af7fee3e915293aab7a910885"
  end

  depends_on arch: [:x86_64]
end
