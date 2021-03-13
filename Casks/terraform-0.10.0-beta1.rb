cask "terraform-0.10.0-beta1" do
  version "0.10.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.0-beta1/terraform_0.10.0-beta1_darwin_amd64.zip"
    sha256 "8170d52bd55bd80744aacd96ae8d87b39e29ed3d2d2853c9cb66ca62b5e295c6"
  end

  depends_on arch: [:x86_64]
end
