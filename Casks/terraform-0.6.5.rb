cask "terraform-0.6.5" do
  version "0.6.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.5/terraform_0.6.5_darwin_amd64.zip"
    sha256 "ba540f36d1dc3ed9d3db9832db3a2b3f6cfea5d9f80b663281c1d28260d298ed"
  end

  depends_on arch: [:x86_64]
end
