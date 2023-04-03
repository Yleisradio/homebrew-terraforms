cask "terraform-0.12.16" do
  version "0.12.16"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_darwin_amd64.zip"
    sha256 "8d3db354320078e0ceb0beec97ca1a0934378ef8ede28e2fe76481c171267762"
  end

  depends_on arch: [:x86_64]
end
