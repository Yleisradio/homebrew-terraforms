cask "terraform-0.11.0" do
  version "0.11.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.11.0/terraform_0.11.0_darwin_amd64.zip"
    sha256 "0d5f7ffcfd34fe58ed25fe48650f1c9ac1d9e15983af43deaeffc6d0a88ba346"
  end

  depends_on arch: [:x86_64]
end
