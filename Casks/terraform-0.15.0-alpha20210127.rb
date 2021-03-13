cask "terraform-0.15.0-alpha20210127" do
  version "0.15.0-alpha20210127"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/0.15.0-alpha20210127/terraform_0.15.0-alpha20210127_darwin_amd64.zip"
    sha256 "5053459451746b22df24fb42c4f767e247827c7bf1aa425e8636d5cec54ec28c"
  end

  depends_on arch: [:x86_64]
end
