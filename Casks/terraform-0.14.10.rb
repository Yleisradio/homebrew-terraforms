cask "terraform-0.14.10" do
  version "0.14.10"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_darwin_amd64.zip"
    sha256 "26890407b6580adef5fdfdf87f9cca3047d061230191af55d49774522e8f8eb5"
  end

  depends_on arch: [:x86_64]
end
