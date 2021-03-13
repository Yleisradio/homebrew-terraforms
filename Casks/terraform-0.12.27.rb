cask "terraform-0.12.27" do
  version "0.12.27"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.27/terraform_0.12.27_darwin_amd64.zip"
    sha256 "3941e8b3f81257e54997cd717cec5dfbf3a254643a47e3ac8c687f26c0b8814f"
  end

  depends_on arch: [:x86_64]
end
