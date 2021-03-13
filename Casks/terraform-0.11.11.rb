cask "terraform-0.11.11" do
  version "0.11.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_darwin_amd64.zip"
    sha256 "6b6e8253b678554c67d717c42209fd857bfe64a1461763c05d3d1d85c6f618d3"
  end

  depends_on arch: [:x86_64]
end
