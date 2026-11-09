/// The entrypoint for the **server** environment.
library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  runApp(Document(
    title: 'Reginald Alfret V | Open-Source Contributor · AI & DS Engineer (Jaspr)',
    lang: 'en',
    base: '/stacks/jaspr/',
    meta: {
      'description':
          'Open-Source Contributor, AI & Data Science Engineer, and Software Developer with 30 merged PRs across Apple, Google, Microsoft, Meta, AWS, NVIDIA, NASA, Netflix and more.',
      'theme-color': '#050505',
    },
    head: [
      Component.element(
        tag: 'script',
        children: [
          RawText(
              "if (window.self !== window.top) { document.documentElement.classList.add('is-embedded'); }"),
        ],
      ),
      Component.element(
        tag: 'script',
        attributes: {'src': 'https://cdn.tailwindcss.com'},
        children: [],
      ),
      Component.element(
        tag: 'script',
        children: [
          RawText('''tailwind.config = {
  theme: {
    extend: {
      colors: {
        obsidian: {
          DEFAULT: '#050505',
          card: '#0a0a0a',
          border: 'rgba(255, 255, 255, 0.1)',
        }
      }
    }
  }
};'''),
        ],
      ),
      Component.element(
        tag: 'link',
        attributes: {
          'rel': 'stylesheet',
          'href':
              'https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=JetBrains+Mono:wght@400;500;600;700&display=swap'
        },
        children: [],
      ),
      Component.element(
        tag: 'style',
        children: [
          RawText('''
body {
  font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  background-color: #050505;
  color: #f5f5f5;
}
code, pre, .font-mono {
  font-family: 'JetBrains Mono', monospace;
}
::selection {
  background-color: rgba(16, 185, 129, 0.2);
  color: #6ee7b7;
}
.is-embedded .floating-stack-dock {
  display: none !important;
}
@media print {
  .no-print {
    display: none !important;
  }
  body {
    background: white !important;
    color: black !important;
  }
}
'''),
        ],
      ),
    ],
    body: App(),
  ));
}
