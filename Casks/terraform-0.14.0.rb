cask "terraform-0.14.0" do
  version "0.14.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0/terraform_0.14.0_darwin_amd64.zip"
    sha256 "e728f9c5f64b9a7507f7038ad243743b4bcad0057fe7cc83021eb825cc2b6b9c"
  end

  depends_on arch: [:x86_64]
end
