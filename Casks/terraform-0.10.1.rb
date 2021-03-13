cask "terraform-0.10.1" do
  version "0.10.1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.10.1/terraform_0.10.1_darwin_amd64.zip"
    sha256 "5aae5125140b6cb39532360bd725fd33a9224b8358140291ff1d34a086dd646b"
  end

  depends_on arch: [:x86_64]
end
