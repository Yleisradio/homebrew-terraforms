cask "terraform-0.15.0-alpha20210210" do
  version "0.15.0-alpha20210210"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210210/terraform_0.15.0-alpha20210210_darwin_amd64.zip"
    sha256 "3fcccd708947e8d8ac54a6a5b9b4835c410336506aa3ce25579c40c2df854423"
  end

  depends_on arch: [:x86_64]
end
