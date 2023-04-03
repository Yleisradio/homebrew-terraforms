cask "terraform-0.15.0-alpha20210107" do
  version "0.15.0-alpha20210107"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210107/terraform_0.15.0-alpha20210107_darwin_amd64.zip"
    sha256 "b5a95586cead146ef532642079dd3e4bb93f0ab785b5bc57c5c6259eb0da2d37"
  end

  depends_on arch: [:x86_64]
end
