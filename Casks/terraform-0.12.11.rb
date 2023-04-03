cask "terraform-0.12.11" do
  version "0.12.11"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.11/terraform_0.12.11_darwin_amd64.zip"
    sha256 "31c7451366605a9d6a6dc41ae0ab29ec186eebeed13e05349f578eaac7692596"
  end

  depends_on arch: [:x86_64]
end
