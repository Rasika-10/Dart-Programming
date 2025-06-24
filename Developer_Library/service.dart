import 'dart:developer';
import 'dart:io';

void main() async {
  final info = await Service.getInfo();

  if (info.serverUri != null) {
    print('✅ VM Service is running.');
    print('🔗 Connecting to: ${info.serverUri}');

    // Open DevTools in default browser (works on most systems)
    final devToolsUrl = '${info.serverUri}';
    _openInBrowser(devToolsUrl);
  } else {
    print('❌ VM Service is not running. Run with `--observe`.');
  }
}

void _openInBrowser(String url) {
  if (Platform.isWindows) {
    Process.run('start', [url], runInShell: true);
  } else if (Platform.isMacOS) {
    Process.run('open', [url]);
  } else if (Platform.isLinux) {
    Process.run('xdg-open', [url]);
  }
}
