cask "terraform-1.2.9" do
  version "1.2.9"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_amd64.zip"
    sha256 "46206e564fdd792e709b7ec70eab1c873c9b1b17f4d33c07a1faa9d68955061b"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.2.9/terraform_1.2.9_darwin_arm64.zip"
    sha256 "e61195aa7cc5caf6c86c35b8099b4a29339cd51e54518eb020bddb35cfc0737d"
  end

  depends_on arch: [:x86_64, :arm64]
end
