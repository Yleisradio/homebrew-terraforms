cask "terraform-1.5.0-alpha20230405" do
  version "1.5.0-alpha20230405"

  name "Terraform"
  homepage "https://www.terraform.io/"

  case Hardware::CPU.arch
  when :x86_64
    url "https://releases.hashicorp.com/terraform/1.5.0-alpha20230405/terraform_1.5.0-alpha20230405_darwin_amd64.zip"
    sha256 "67710a24862066a607f18aa9b8bad3c810b31fadbd3b4999395894f527a89f5d"
  when :arm64
    url "https://releases.hashicorp.com/terraform/1.5.0-alpha20230405/terraform_1.5.0-alpha20230405_darwin_arm64.zip"
    sha256 "b5e175ff971d6e58854dfc6a2388847372ba58f9b2abecf8ba1108be28181e63"
  end

  depends_on arch: [:x86_64, :arm64]
end
