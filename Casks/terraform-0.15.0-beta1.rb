cask "terraform-0.15.0-beta1" do
  version "0.15.0-beta1"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-beta1/terraform_0.15.0-beta1_darwin_amd64.zip"
    sha256 "fac5a5e595344b68ccc3c06208cc310e3da0602c2f1cdb794bfa074d4d2dbe93"
  end

  depends_on arch: [:x86_64]
end
