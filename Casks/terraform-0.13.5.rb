cask "terraform-0.13.5" do
  version "0.13.5"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_darwin_amd64.zip"
    sha256 "03f7b636638c587c3b03a4b3d1d4cab77c872ad5f7e55405ddaf38dfb94e0e89"
  end

  depends_on arch: [:x86_64]
end
