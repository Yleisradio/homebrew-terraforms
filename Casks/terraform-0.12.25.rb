cask "terraform-0.12.25" do
  version "0.12.25"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_darwin_amd64.zip"
    sha256 "d3592d13da863f65b57be78f9ab264b3a738cc0b972c7fa02996d5932237e44d"
  end

  depends_on arch: [:x86_64]
end
