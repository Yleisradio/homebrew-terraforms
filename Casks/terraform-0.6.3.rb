cask "terraform-0.6.3" do
  version "0.6.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.3/terraform_0.6.3_darwin_amd64.zip"
    sha256 "d5c50b38bdba7dd11ccd31ebe04de9bb4a1f31a8b30ba967c863e3754d1bfd8b"
  end

  depends_on arch: [:x86_64]
end
