import 'package:adkar/homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'تواصل معنا',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      _buildSocialMediaButton(
                        icon: FontAwesomeIcons.instagram,
                        label: 'Instagram',
                        url: 'https://www.instagram.com/_desdev/',
                      ),
                      const SizedBox(height: 20),
                      _buildSocialMediaButton(
                        icon: FontAwesomeIcons.xTwitter,
                        label: 'Twitter',
                        url: 'https://twitter.com/yourprofile',
                      ),
                      const SizedBox(height: 20),
                      _buildSocialMediaButton(
                        icon: FontAwesomeIcons.tiktok,
                        label: 'TikTok',
                        url:
                            'https://www.tiktok.com/@_devdes?_t=8pN4MHa1oNK&_r=1',
                      ),
                      const SizedBox(height: 20),
                      _buildSocialMediaButton(
                        icon: FontAwesomeIcons.linkedinIn,
                        label: 'LinkedIn',
                        url: 'https://linkedin.com/in/yourprofile',
                      ),
                      const SizedBox(height: 20),
                      _buildSocialMediaButton(
                        icon: FontAwesomeIcons.github,
                        label: 'GitHub',
                        url: 'https://github.com/louahme',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialMediaButton({
    required IconData icon,
    required String label,
    required String url,
  }) {
    return GestureDetector(
      onTap: () => _launchURL(url),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        decoration: BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FaIcon(icon, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
