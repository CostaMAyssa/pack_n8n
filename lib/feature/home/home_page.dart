import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pack_n8n/feature/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:pack_n8n/feature/home/widgets/app_bar/web_app_bar.dart';
import 'package:pack_n8n/feature/home/widgets/sections/category_section.dart';
import 'package:pack_n8n/feature/home/widgets/sections/advantages_section.dart';
import 'package:pack_n8n/feature/home/widgets/sections/footer.dart';
import 'package:pack_n8n/feature/home/widgets/sections/support_section.dart';
import 'package:pack_n8n/utils/breakpoints/breakpoints.dart';

class HomePage extends StatelessWidget {
  void _launchWhatsApp() async {
    final Uri whatsappUrl = Uri.parse("https://wa.me/5564992334261");
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Color(0xFF1A1A1A)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1400),
                child: ListView(
                  children: [            
                    SizedBox(height: 40),
                    CategorySection(),
                    SizedBox(height: 70),
                    AdvantagesSection(),
                    SizedBox(height: 70),
                    SupportSection(),
                    SizedBox(height: 50),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          floatingActionButton: FloatingActionButton(
            onPressed: _launchWhatsApp,
            backgroundColor: Colors.green,
            child: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 30),
          ),
        );
      },
    );
  }
}
