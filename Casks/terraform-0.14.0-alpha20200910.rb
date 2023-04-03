cask "terraform-0.14.0-alpha20200910" do
  version "0.14.0-alpha20200910"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200910/terraform_0.14.0-alpha20200910_darwin_amd64.zip"
    sha256 "e75122707182459bd997aafe6b5559260d3429ab09b11547de78b053f4b674ce"
  end

  depends_on arch: [:x86_64]
end
