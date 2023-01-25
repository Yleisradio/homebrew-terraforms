cask "terraform-1.1.0-alpha20210630" do
  version "1.1.0-alpha20210630"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210630/terraform_1.1.0-alpha20210630_darwin_amd64.zip"
    sha256 "efe9cd45371847e46f3e416e28b8f0903b94736e757b3ece487c2cfa093355ec"
  end

  depends_on arch: [:x86_64]
end
