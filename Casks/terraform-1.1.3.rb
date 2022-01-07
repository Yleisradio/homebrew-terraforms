cask "terraform-1.1.3" do
  version "1.1.3"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_amd64.zip"
    sha256 "c54022e514a97e9b96dae24a3308227d034989ecbafb65e3293eea91f2d5edfb"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.1.3/terraform_1.1.3_darwin_arm64.zip"
    sha256 "856e435da081d0a214c47a4eb09b1842f35eaa55e7ef0f9fa715d4816981d640"
  end

  depends_on arch: [:x86_64, :arm64]
end
