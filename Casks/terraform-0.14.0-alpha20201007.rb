cask "terraform-0.14.0-alpha20201007" do
  version "0.14.0-alpha20201007"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20201007/terraform_0.14.0-alpha20201007_darwin_amd64.zip"
    sha256 "f2689edb2dbe46fafbdf92062a37c695d398d5224756c57db62fae8097f54a0a"
  end

  depends_on arch: [:x86_64]
end
