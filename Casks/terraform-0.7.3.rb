cask "terraform-0.7.3" do
  version "0.7.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.7.3/terraform_0.7.3_darwin_amd64.zip"
    sha256 "e0057e4f32e6490361611e3eb34e35f8b5314d861aa26fd9e89e1a7c4ab773bf"
  end

  depends_on arch: [:x86_64]
end
