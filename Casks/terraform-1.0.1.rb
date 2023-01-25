cask "terraform-1.0.1" do
  version "1.0.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.0.1/terraform_1.0.1_darwin_amd64.zip"
    sha256 "06e796fb25c0ef089f48efbf7384cd1844c094222a4d3aeed6f4470932af9b6c"
  end

  depends_on arch: [:x86_64]
end
