cask "terraform-0.9.3" do
  version "0.9.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.9.3/terraform_0.9.3_darwin_amd64.zip"
    sha256 "180afdeb14f4049f3374fe02b9143ad428ebd31dd89c6595775d7ba439d7fbf0"
  end

  depends_on arch: [:x86_64]
end
