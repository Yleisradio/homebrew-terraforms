cask "terraform-0.14.8" do
  version "0.14.8"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.8/terraform_0.14.8_darwin_amd64.zip"
    sha256 "8920b658fd03722d44acaae4a633d72cffe425cab4cbbea7b0c28d5ea7f72127"
  end

  depends_on arch: [:x86_64]
end
