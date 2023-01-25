cask "terraform-1.0.0" do
  version "1.0.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.0/terraform_1.0.0_darwin_amd64.zip"
    sha256 "2051ba2647b343ebac70108d059d85b6c66f3213d23091ce36f898abf019833f"
  end

  depends_on arch: [:x86_64]
end
