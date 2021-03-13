cask "terraform-0.4.1" do
  version "0.4.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.4.1/terraform_0.4.1_darwin_amd64.zip"
    sha256 "08bb2eaa5b4eae89963e5ed1598689d95d220c0cafb59bbd5f266f8e326ac944"
  end

  depends_on arch: [:x86_64]
end
