cask "terraform-1.1.0" do
  version "1.1.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_amd64.zip"
    sha256 "37ea10c6c24152e1e23ab1163a42cba93f3facd8a4b65a569d72373578f2151f"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_darwin_arm64.zip"
    sha256 "d1b17c019e6b0cfc4d286c6cd42b051278be91064d117bea3708a9396e39642e"
  end

  depends_on arch: [:x86_64, :arm64]
end
