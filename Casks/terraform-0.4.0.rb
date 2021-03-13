cask "terraform-0.4.0" do
  version "0.4.0"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.4.0/terraform_0.4.0_darwin_amd64.zip"
    sha256 "eba9a10b11d572bc5146c1d01353193ba45af2683a0977db09e7b18dff079398"
  end

  depends_on arch: [:x86_64]
end
