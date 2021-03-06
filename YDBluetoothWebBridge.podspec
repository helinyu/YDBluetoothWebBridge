
Pod::Spec.new do |s|
  s.name         = 'YDBluetoothWebBridge'
  s.version      = '0.2.5'
  s.summary      = '连接蓝牙并且获取数据展示在web上通过html页面，客户端只需要看法html页面'
  s.ios.deployment_target = '7.0'
  s.homepage     = 'https://github.com/helinyu/YDBluetoothWebBridge'
  s.license      = 'MIT'
  s.authors      = { "felix" => "2319979647@qq.com" }
  s.platform     = :ios, '7.0'
  s.source       = {:git => 'https://github.com/helinyu/YDBluetoothWebBridge.git', :tag => s.version}
  # s.source_files = 'ydOpenHardware/Bluetooth/*.{h,m}','ydOpenHardware/extension/*.{h,m}','ydOpenHardware/MSJsonKit/*.{h,mm}'
  # ,'ydOpenHardware/WebView/YDBridgeWebViewController.{h,m}'
  # ,'ydOpenHardware/WebView/YDS3WebViewMgr.{h,m}'
  s.requires_arc = true
  s.description  = <<-DESC
                  YDBluetoothWebBridge is for easier to use display datas from bluetooth on html web page
                 DESC
  s.vendored_frameworks = 'YDBluetoothWebBridge.framework'

   # dependency
    s.dependency 'Masonry', '~> 1.0.2'
    s.dependency 'BabyBluetooth', '~> 0.7.0'
    s.dependency 'WebViewJavascriptBridge', '~> 6.0.2'
    s.dependency 'SVProgressHUD', '~> 2.1.2'
    s.dependency 'NJKWebViewProgress', '~> 0.2.3'
    s.dependency 'YYModel', '~> 1.0.4'
    s.dependency 'MJRefresh', '~> 3.1.12'
    s.dependency 'Reachability', '~> 3.2'
    s.dependency 'HardwareDatasStorage', '~> 0.0.1'

    # s.frameworks = 'ydOpenHardware/framework/*'

end
