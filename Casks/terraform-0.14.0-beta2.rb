cask "terraform-0.14.0-beta2" do
  version "0.14.0-beta2"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-beta2/terraform_0.14.0-beta2_darwin_amd64.zip"
    sha256 "b6bbb9b918dad1dabfcc8be5d0c143ef03d27f981b1af17470b45c04604a93cb"
  end

  depends_on arch: [:x86_64]
end
