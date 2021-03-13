cask "terraform-0.12.29" do
  version "0.12.29"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.29/terraform_0.12.29_darwin_amd64.zip"
    sha256 "fdcda98ff7b7e65832248f64ef6c2922e05036de25d40c5cdcd732c5117150aa"
  end

  depends_on arch: [:x86_64]
end
