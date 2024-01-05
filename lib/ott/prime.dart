import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';







class Prime_video extends StatefulWidget {
  const Prime_video({super.key});

  @override
  State<Prime_video> createState() => _Prime_videoState();
}

class _Prime_videoState extends State<Prime_video> {


  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://www.primevideo.com/offers/nonprimehomepage/'
        'ref=dvm_pds_amz_in_as_s_gm_159_mkw_sRumWk2Nj-dc?mrntrk=pcrid_'
        '657901934579_slid__pgrid_84577172328_pgeo_9303511_x__adext__ptid_kwd-303629226711'));



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: GlowText('Prime Videos'),
      ),


      body:WebViewWidget(controller: controller),
    );
  }
}
