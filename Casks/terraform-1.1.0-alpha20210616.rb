cask "terraform-1.1.0-alpha20210616" do
  version "1.1.0-alpha20210616"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0-alpha20210616/terraform_1.1.0-alpha20210616_darwin_amd64.zip"
    sha256 "e7f82bb8769501e8794ec3b82f75243827605a64b456893427529215492ba622"
  end

  depends_on arch: [:x86_64]
end
