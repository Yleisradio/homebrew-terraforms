cask "terraform-0.12.30" do
  version "0.12.30"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.12.30/terraform_0.12.30_darwin_amd64.zip"
    sha256 "cf7df9be4c5261a7fbca0438380379c408cd49d12fbd1bbeb9faafb696790021"
  end

  depends_on arch: [:x86_64]
end
