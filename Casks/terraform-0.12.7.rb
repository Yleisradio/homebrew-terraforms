cask "terraform-0.12.7" do
  version "0.12.7"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_darwin_amd64.zip"
    sha256 "3d177358812c3d40259aed68adbc369c0ce17c5127763a9ac79b270378555467"
  end

  depends_on arch: [:x86_64]
end
