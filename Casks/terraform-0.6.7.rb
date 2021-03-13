cask "terraform-0.6.7" do
  version "0.6.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.6.7/terraform_0.6.7_darwin_amd64.zip"
    sha256 "fe54fa09af11a1375a2b85912fe416d494a52137be7c5b0b4aaae35d75b0d588"
  end

  depends_on arch: [:x86_64]
end
