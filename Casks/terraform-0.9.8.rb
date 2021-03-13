cask "terraform-0.9.8" do
  version "0.9.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.8/terraform_0.9.8_darwin_amd64.zip"
    sha256 "f2f4e12bcb6e8bbd8876194221fbb79860ad700926d47a42654a354d70b06022"
  end

  depends_on arch: [:x86_64]
end
