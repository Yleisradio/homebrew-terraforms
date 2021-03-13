cask "terraform-0.14.0-alpha20200910" do
  version "0.14.0-alpha20200910"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.14.0-alpha20200910/terraform_0.14.0-alpha20200910_darwin_amd64.zip"
    sha256 "2e65f929c74134f2a40ae1f092097c24159186e5ac58fbf19841a21b9f575893"
  end

  depends_on arch: [:x86_64]
end
