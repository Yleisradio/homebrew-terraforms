cask "terraform-1.0.1" do
  version "1.0.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_darwin_amd64.zip"
    sha256 "260524ebe620a73df4c9732fec6887e74414df6d3210f5c6eaca24558f320938"
  end

  depends_on arch: [:x86_64]
end
