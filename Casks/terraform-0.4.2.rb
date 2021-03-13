cask "terraform-0.4.2" do
  version "0.4.2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.4.2/terraform_0.4.2_darwin_amd64.zip"
    sha256 "317e2b9721394c1f6cc6710f13598cd91e8816b82fdc3781485556cadf1311dd"
  end

  depends_on arch: [:x86_64]
end
