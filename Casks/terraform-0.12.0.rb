cask "terraform-0.12.0" do
  version "0.12.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_darwin_amd64.zip"
    sha256 "9dbee9dea660ea64352f8ddf2539e60d1c414210e9c4a29c8585926fef366be1"
  end

  depends_on arch: [:x86_64]
end
