class OfasWebsocketTranscoder < Formula
    desc "TCP socket to WebSocket transcoder for NetApp Ofas Spark Applications"
    homepage "https://github.com/sigmarkarl/homebrew-ofas-websocket-transcoder"
    url "https://github.com/sigmarkarl/homebrew-ofas-websocket-transcoder/releases/download/1.0.0/ofas-websocket-transcoder"
    sha256 "f552f6892141b75142030771262ba3d87eb352285fc04c306e509642e9ebe3b6"
    license "MIT License"
  
    # depends_on "cmake" => :build
  
    def install
      # bin.executable "ofas-websocket-transcoder"
      bin.install_symlink "ofas-websocket-transcoder"
      # ln -s bin/ocean-websocket-transcoder /opt/homebrew/bin/ocean-websocket-transcoder
      system "ln", "-s", bin/ofas-websocket-transcoder, "/opt/homebrew/bin/ofas-websocket-transcoder"
      # ENV.deparallelize
      # system "./configure", *std_configure_args, "--disable-silent-rules"
      # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
      # system "make", "install"
    end
  
    test do
      system "false"
    end
  end
