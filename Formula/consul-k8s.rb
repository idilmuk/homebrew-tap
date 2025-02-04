class ConsulK8s < Formula
  desc "Consul K8s"
  homepage "https://github.com/hashicorp/consul-k8s"
  version "1.0.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/consul-k8s/1.0.2/consul-k8s_1.0.2_darwin_amd64.zip"
    sha256 "75ca9543d4489305c5942f7c3f9aafe837296f998e90643172030099ca5000fc"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.hashicorp.com/consul-k8s/1.0.2/consul-k8s_1.0.2_darwin_arm64.zip"
    sha256 "461199df8221bf2b1edd8d0389b2a472e70f3bd9ae5ef8570ec89c89748a7c04"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://releases.hashicorp.com/consul-k8s/1.0.2/consul-k8s_1.0.2_linux_amd64.zip"
    sha256 "d520c2b47c8498ef2f27a46806ec376f08dd5d24b0267e1f4357c1cf89573974"
  end

  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/consul-k8s/1.0.2/consul-k8s_1.0.2_linux_arm.zip"
    sha256 "47fa782021985ceb6f0e4760804bad93a03e077c86fdfe7b1096b1f11644280c"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://releases.hashicorp.com/consul-k8s/1.0.2/consul-k8s_1.0.2_linux_arm64.zip"
    sha256 "b4fc080c859bda250c90f92db3e1e3d8797ff3630e479bad1753361098685286"
  end

  conflicts_with "consul-k8s"

  def install
    bin.install "consul-k8s"
  end

  test do
    system "#{bin}/consul-k8s --version"
  end
end
