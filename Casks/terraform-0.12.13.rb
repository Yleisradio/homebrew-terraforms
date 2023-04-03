cask "terraform-0.12.13" do
  version "0.12.13"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.13/terraform_0.12.13_darwin_amd64.zip"
    sha256 "77d9e73edccc9cc3c7b5e0f1c84a90f0f18b55359aff9181faf636c9fb14c15a"
  end

  depends_on arch: [:x86_64]
end
