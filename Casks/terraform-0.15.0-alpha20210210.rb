cask "terraform-0.15.0-alpha20210210" do
  version "0.15.0-alpha20210210"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210210/terraform_0.15.0-alpha20210210_darwin_amd64.zip"
    sha256 "5bb761dc863faa4471b33bb2fb293e27a8af7eb201c35bb10d2ce7e8ddfb20bd"
  end

  depends_on arch: [:x86_64]
end
