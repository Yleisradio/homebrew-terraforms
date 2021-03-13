cask "terraform-0.6.8" do
  version "0.6.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.8/terraform_0.6.8_darwin_amd64.zip"
    sha256 "71fd8ff20f657a4c7d82794756d55c55b0686516a8253356b8edd1a728230577"
  end

  depends_on arch: [:x86_64]
end
