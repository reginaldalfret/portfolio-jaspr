import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

enum PrCategory { all, bigTech, aiMl, cloudInfra }

class Contribution {
  final String org;
  final String repo;
  final String pr;
  final String url;
  final PrCategory category;
  final String highlight;

  const Contribution({
    required this.org,
    required this.repo,
    required this.pr,
    required this.url,
    required this.category,
    required this.highlight,
  });
}

class Experience {
  final String company;
  final String role;
  final String period;
  final String location;
  final List<String> bullets;

  const Experience({
    required this.company,
    required this.role,
    required this.period,
    required this.location,
    required this.bullets,
  });
}

class Project {
  final String title;
  final String badge;
  final String description;
  final List<String> tags;
  final List<String> bullets;

  const Project({
    required this.title,
    required this.badge,
    required this.description,
    required this.tags,
    required this.bullets,
  });
}

class Achievement {
  final String icon;
  final String title;
  final String subtitle;

  const Achievement({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}

class Certification {
  final String icon;
  final String title;
  final String issuer;

  const Certification({
    required this.icon,
    required this.title,
    required this.issuer,
  });
}

class StackItem {
  final String name;
  final String href;
  final String badge;
  final String icon;
  final String desc;
  final bool isActive;

  const StackItem({
    required this.name,
    required this.href,
    required this.badge,
    required this.icon,
    required this.desc,
    this.isActive = false,
  });
}

const List<Contribution> kContributions = [
  Contribution(org: "Apple", repo: "swift-numerics", pr: "#355", url: "https://github.com/apple/swift-numerics/pull/355", category: PrCategory.bigTech, highlight: "Complex Trigonometric Functions"),
  Contribution(org: "Google", repo: "Highway", pr: "#3511", url: "https://github.com/google/highway/pull/3511", category: PrCategory.bigTech, highlight: "SIMD Highway Acceleration"),
  Contribution(org: "Google Cloud", repo: "Data Validator", pr: "#1863", url: "https://github.com/GoogleCloudPlatform/professional-services-data-validator/pull/1863", category: PrCategory.cloudInfra, highlight: "BigQuery BigNumeric validation"),
  Contribution(org: "Microsoft", repo: "Semantic Kernel", pr: "#14472", url: "https://github.com/microsoft/semantic-kernel/pull/14472", category: PrCategory.aiMl, highlight: "Agent prompt filter fixes"),
  Contribution(org: "AWS", repo: "Lambda Powertools", pr: "#8542", url: "https://github.com/aws-powertools/powertools-lambda-python/pull/8542", category: PrCategory.cloudInfra, highlight: "Event handler validation"),
  Contribution(org: "Meta", repo: "StyleX", pr: "#1899", url: "https://github.com/facebook/stylex/pull/1899", category: PrCategory.bigTech, highlight: "CSS build compiler fixes"),
  Contribution(org: "NVIDIA", repo: "cuOpt", pr: "#2068", url: "https://github.com/NVIDIA/cuopt/pull/2068", category: PrCategory.aiMl, highlight: "GPU optimization routing"),
  Contribution(org: "NASA", repo: "ProgPy", pr: "#237", url: "https://github.com/nasa/prog_models/pull/237", category: PrCategory.aiMl, highlight: "Prognostics physics models"),
  Contribution(org: "Azure", repo: "Cosmos DB Emulator", pr: "#359", url: "https://github.com/Azure/azure-cosmos-db-emulator-docker/pull/359", category: PrCategory.cloudInfra, highlight: "Docker Linux container runner"),
  Contribution(org: "Adobe", repo: "Skills", pr: "#445", url: "https://github.com/adobe/skills/pull/445", category: PrCategory.bigTech, highlight: "Workflow orchestration types"),
  Contribution(org: "Intel", repo: "AutoRound", pr: "#2421", url: "https://github.com/intel/auto-round/pull/2421", category: PrCategory.aiMl, highlight: "Low-bit LLM quantization"),
  Contribution(org: "IBM", repo: "Docling Pipelines", pr: "#85", url: "https://github.com/IBM/docling-pipelines/pull/85", category: PrCategory.aiMl, highlight: "Document parsing pipeline"),
  Contribution(org: "Uber", repo: "Kraken", pr: "#716", url: "https://github.com/uber/kraken/pull/716", category: PrCategory.cloudInfra, highlight: "P2P Docker registry engine"),
  Contribution(org: "Airbnb", repo: "MagazineLayout", pr: "#169", url: "https://github.com/airbnb/MagazineLayout/pull/169", category: PrCategory.bigTech, highlight: "UICollectionView grid layout"),
  Contribution(org: "GitHub", repo: "GitHub CLI", pr: "#14592", url: "https://github.com/cli/cli/pull/14592", category: PrCategory.bigTech, highlight: "GraphQL alias queries"),
  Contribution(org: "Dell", repo: "Omnia Containers", pr: "#649", url: "https://github.com/dell/omnia/pull/649", category: PrCategory.cloudInfra, highlight: "HPC Slurm deployment"),
  Contribution(org: "Salesforce", repo: "tough-cookie", pr: "#659", url: "https://github.com/salesforce/tough-cookie/pull/659", category: PrCategory.cloudInfra, highlight: "Cookie parser security RFC6265"),
  Contribution(org: "AMD", repo: "ROCm HRX System", pr: "#1231", url: "https://github.com/ROCm/hrx-system/pull/1231", category: PrCategory.aiMl, highlight: "GPU telemetry monitoring"),
  Contribution(org: "SAP", repo: "E-Mobility Simulator", pr: "#2136", url: "https://github.com/SAP/e-mobility-charging-stations-simulator/pull/2136", category: PrCategory.cloudInfra, highlight: "OCPP 2.0.1 charge station logic"),
  Contribution(org: "Pinterest", repo: "PyMemcache", pr: "#657", url: "https://github.com/pinterest/pymemcache/pull/657", category: PrCategory.cloudInfra, highlight: "Connection pooling failover"),
  Contribution(org: "Qualcomm", repo: "Commit Msg Check", pr: "#38", url: "https://github.com/qualcomm/commit-msg-check-action/pull/38", category: PrCategory.bigTech, highlight: "CI/CD git validation"),
  Contribution(org: "Stripe", repo: "Stripe React Native", pr: "#2751", url: "https://github.com/stripe/stripe-react-native/pull/2751", category: PrCategory.bigTech, highlight: "PaymentSheet callback handlers"),
  Contribution(org: "Docker", repo: "Docker Docs", pr: "#26266", url: "https://github.com/docker/docs/pull/26266", category: PrCategory.cloudInfra, highlight: "Compose V2 multi-stage configs"),
  Contribution(org: "Apache", repo: "HertzBeat", pr: "#4410", url: "https://github.com/apache/hertzbeat/pull/4410", category: PrCategory.cloudInfra, highlight: "Real-time network telemetry"),
  Contribution(org: "Cloudflare", repo: "CFSSL", pr: "#1451", url: "https://github.com/cloudflare/cfssl/pull/1451", category: PrCategory.cloudInfra, highlight: "TLS certificate bundler CLI"),
  Contribution(org: "OpenAI", repo: "Softnet", pr: "#219", url: "https://github.com/openai/softnet/pull/219", category: PrCategory.aiMl, highlight: "Gradient descent scheduler"),
  Contribution(org: "Snapchat", repo: "ts-inject", pr: "#30", url: "https://github.com/Snapchat/ts-inject/pull/30", category: PrCategory.bigTech, highlight: "Dependency injection typings"),
  Contribution(org: "Spotify", repo: "Confidence SDK", pr: "#272", url: "https://github.com/spotify/confidence-sdk-swift/pull/272", category: PrCategory.bigTech, highlight: "Feature flagging Swift SDK"),
  Contribution(org: "Cisco", repo: "cJOSE", pr: "#202", url: "https://github.com/cisco/cjose/pull/202", category: PrCategory.cloudInfra, highlight: "JWE encryption RFC7516"),
  Contribution(org: "Netflix", repo: "Atlas", pr: "#2011", url: "https://github.com/Netflix/atlas/pull/2011", category: PrCategory.cloudInfra, highlight: "In-memory time series metrics"),
];

const List<Experience> kExperiences = [
  Experience(
    company: "DailyGurus",
    role: "Software Developer",
    period: "Jul 2026 – Present",
    location: "Chennai, India",
    bullets: [
      "Architecting enterprise ERP solutions using React, Node.js, and TypeScript with high-concurrency microservices.",
      "Spearheading module customizations and workflow automations in ERPNext for mission-critical operations.",
      "Building low-latency REST and GraphQL APIs backed by PostgreSQL and Redis caches.",
    ],
  ),
  Experience(
    company: "Data Patterns",
    role: "Data Science Intern",
    period: "May 2025 – Jun 2025",
    location: "Chennai, India",
    bullets: [
      "Engineered high-throughput automated scrapers to curate domain-specific aerospace research datasets from IEEE.",
      "Fine-tuned open-source LLMs using LoRA (Low-Rank Adaptation) and QLoRA for domain-adapted technical QA.",
      "Evaluated model inference speed and perplexity, achieving 35% reduction in latency via vLLM quantization.",
    ],
  ),
];

const List<Project> kProjects = [
  Project(
    title: "301 Super AI Agents — Sovereign Multi-Agent AI Platform",
    badge: "🥇 1st Prize · HackIndia 2026",
    description: "Local-first autonomous multi-agent platform orchestrating 301 specialized AI agents for real-world workflow automation.",
    tags: ["Dart", "Jaspr", "FastAPI", "Ollama LLMs", "OCR", "Multi-Agent System"],
    bullets: [
      "Designed a hierarchical agent swarm coordinated by central orchestrator Agent 301.",
      "Implemented offline local inference with Ollama, multimodal OCR extraction, and real-time streaming.",
      "Engineered zero-telemetry sovereign execution designed for strict enterprise security compliance.",
    ],
  ),
  Project(
    title: "TOR-UNVEIL — Dark Web AI Cybercriminal Tracker",
    badge: "🥇 1st Prize · TN Police Hackathon 2025",
    description: "Full-stack AI surveillance platform adapted for live cybercriminal intelligence by the Tamil Nadu Police.",
    tags: ["Python", "Network Analysis", "Graph Neural Nets", "TypeScript", "Tailwind CSS"],
    bullets: [
      "Built automated crawling and onion-service profiling engine for illicit darknet marketplace monitoring.",
      "Developed entity resolution, bitcoin transaction correlation, and dynamic crime network graph visualization.",
    ],
  ),
  Project(
    title: "AI Crop Recommendation & Agri-Intelligence Engine",
    badge: "🥇 1st Prize · Blaze a Trail 2.0",
    description: "Precision agriculture system utilizing satellite GIS data, multi-spectral imagery, and ML classifiers.",
    tags: ["Python", "Scikit-learn", "GIS Data", "Explainable AI", "REST API"],
    bullets: [
      "Analyzed soil NPK, humidity, precipitation, and satellite indices to recommend optimal crops with 96% accuracy.",
      "Integrated SHAP & LIME for Explainable AI predictions to build trust with local agrarian communities.",
    ],
  ),
];

const List<Achievement> kAchievements = [
  Achievement(icon: "🥇", title: "1st Prize – HackIndia 2026", subtitle: "301 Super AI Agents (500+ Teams)"),
  Achievement(icon: "🥇", title: "1st Prize – TN Police Hackathon 2025", subtitle: "TOR-UNVEIL Dark Web Tracker"),
  Achievement(icon: "🥇", title: "1st Prize – Blaze a Trail 2.0", subtitle: "Crop Recommendation Engine"),
  Achievement(icon: "🛡️", title: "State Finalist – TN Police Hackathon 2024", subtitle: "Automated Cybersecurity Threat Analyzer"),
  Achievement(icon: "🏆", title: "Winner – 6 National Technical Symposiums", subtitle: "Autonomous Systems & Coding Challenges"),
  Achievement(icon: "🚀", title: "70+ Production Projects", subtitle: "Across AI, Systems, WebAssembly & Full-Stack"),
];

const List<Certification> kCertifications = [
  Certification(icon: "🎓", title: "Meta Front-End Developer Professional", issuer: "Coursera / Meta"),
  Certification(icon: "🛡️", title: "Google Cybersecurity Professional", issuer: "Coursera / Google"),
  Certification(icon: "⚛️", title: "React: The Complete Guide", issuer: "Udemy"),
  Certification(icon: "🎨", title: "Figma UI/UX Design Essentials", issuer: "Udemy"),
];

const List<StackItem> kStacks = [
  StackItem(name: "Next.js", href: "/", badge: "Core Engine", icon: "▲", desc: "Next.js 14 App Router · React 18 · TypeScript"),
  StackItem(name: "Nuxt 3", href: "/stacks/nuxt", badge: "Live SSR", icon: "▲", desc: "Nuxt 3 · Vue 3 Composition API · Nitro"),
  StackItem(name: "Django", href: "/stacks/django", badge: "Live SSR", icon: "dj", desc: "Django 6 · Python 3.13 · Jinja Templates"),
  StackItem(name: "Spring Boot", href: "/stacks/springboot", badge: "Live SSR", icon: "🍃", desc: "Spring Boot 3 · Java 21 · Thymeleaf"),
  StackItem(name: "Laravel", href: "/stacks/laravel", badge: "Live SSR", icon: "🔴", desc: "Laravel 11 · PHP 8.4 · Blade SSR"),
  StackItem(name: "Rails", href: "/stacks/rails", badge: "Live SSR", icon: "💎", desc: "Ruby on Rails 8 · Ruby 3.4 · ERB"),
  StackItem(name: "Angular", href: "/stacks/angular", badge: "Live SPA", icon: "🅰️", desc: "Angular 19/22 · TypeScript 6.0 · Signals"),
  StackItem(name: "Blazor", href: "/stacks/blazor", badge: "Live WASM", icon: "🟣", desc: "Blazor WebAssembly · .NET 8 · C#"),
  StackItem(name: "Buffalo", href: "/stacks/buffalo", badge: "Live Go", icon: "🦬", desc: "Go Buffalo · Go 1.27 · Plush SSR"),
  StackItem(name: "Leptos", href: "/stacks/leptos", badge: "Live WASM", icon: "🦀", desc: "Rust WebAssembly · Leptos 0.7 · CSR"),
  StackItem(name: "Jaspr", href: "/stacks/jaspr", badge: "Live Dart", icon: "🎯", desc: "Dart 3.13 · Jaspr 0.23 · SSR Hydration", isActive: true),
  StackItem(name: "Vapor", href: "/stacks/vapor", badge: "Live Swift", icon: "💧", desc: "Swift 5.10 • Vapor 4 (SwiftNIO) • SSR"),
];

@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @css
  static List<StyleRule> get styles => [];

  String viewMode = 'interactive';
  PrCategory activeCategory = PrCategory.all;

  void setViewMode(String mode) {
    setState(() {
      viewMode = mode;
    });
  }

  void setCategory(PrCategory category) {
    setState(() {
      activeCategory = category;
    });
  }

  @override
  Component build(BuildContext context) {
    final filteredPrs = kContributions.where((pr) {
      if (activeCategory == PrCategory.all) return true;
      return pr.category == activeCategory;
    }).toList();

    return div(classes: 'min-h-screen py-6 px-3 sm:px-6 md:px-8', [
      // 1. Top Glass Command Bar
      div(classes: 'max-w-6xl mx-auto mb-6 sticky top-3 z-50 no-print', [
        div(
          classes:
              'backdrop-blur-xl bg-black/60 border border-white/10 rounded-2xl p-2.5 sm:p-3 shadow-2xl flex flex-wrap items-center justify-between gap-3',
          [
            // Brand
            div(classes: 'flex items-center gap-2.5 px-2', [
              div(
                classes:
                    'w-8 h-8 rounded-xl bg-gradient-to-tr from-emerald-500 to-teal-400 flex items-center justify-center shadow-lg shadow-emerald-500/20 text-black font-black text-sm',
                [text('RA')],
              ),
              div([
                div(classes: 'text-sm font-semibold tracking-wide text-white', [
                  text('Reginald Alfret V'),
                ]),
                div(
                  classes: 'text-[11px] text-emerald-400 font-mono tracking-wider',
                  [text('RESUME PORTFOLIO (JASPR)')],
                ),
              ]),
            ]),

            // View Mode Switcher
            div(
              classes:
                  'flex items-center bg-white/5 border border-white/10 rounded-xl p-1 text-xs',
              [
                button(
                  onClick: () => setViewMode('interactive'),
                  type: ButtonType.button,
                  classes: viewMode == 'interactive'
                      ? 'flex items-center gap-1.5 px-3 py-1.5 rounded-lg font-medium transition-all bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 shadow-sm'
                      : 'flex items-center gap-1.5 px-3 py-1.5 rounded-lg font-medium transition-all text-neutral-400 hover:text-white',
                  [
                    const RawText(
                        '<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="m12 3-1.912 5.813a2 2 0 0 1-1.275 1.275L3 12l5.813 1.912a2 2 0 0 1 1.275 1.275L12 21l1.912-5.813a2 2 0 0 1 1.275-1.275L21 12l-5.813-1.912a2 2 0 0 1-1.275-1.275L12 3Z"/></svg>'),
                    span([text('Interactive Resume')]),
                  ],
                ),
                button(
                  onClick: () => setViewMode('pdf'),
                  type: ButtonType.button,
                  classes: viewMode == 'pdf'
                      ? 'flex items-center gap-1.5 px-3 py-1.5 rounded-lg font-medium transition-all bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 shadow-sm'
                      : 'flex items-center gap-1.5 px-3 py-1.5 rounded-lg font-medium transition-all text-neutral-400 hover:text-white',
                  [
                    const RawText(
                        '<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"/><polyline points="14 2 14 8 20 8"/></svg>'),
                    span([text('Original PDF Document')]),
                  ],
                ),
              ],
            ),

            // Quick Actions
            div(classes: 'flex items-center gap-2', [
              button(
                attributes: {'onclick': 'window.print()'},
                type: ButtonType.button,
                classes:
                    'hidden sm:inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl text-xs font-medium bg-white/5 hover:bg-white/10 border border-white/10 text-neutral-300 hover:text-white transition-colors',
                [
                  const RawText(
                      '<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="6 9 6 2 18 2 18 9"/><path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"/><rect width="12" height="8" x="6" y="14"/></svg>'),
                  span([text('Print')]),
                ],
              ),
              a(
                href: '/Reginald_Alfret_Resume.pdf',
                attributes: {'download': 'Reginald_Alfret_Resume.pdf'},
                classes:
                    'inline-flex items-center gap-1.5 px-3.5 py-1.5 rounded-xl text-xs font-semibold bg-gradient-to-r from-emerald-500 to-teal-400 text-black shadow-lg shadow-emerald-500/20 hover:brightness-110 transition-all',
                [
                  const RawText(
                      '<svg class="w-3.5 h-3.5 text-black" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"/><polyline points="7 10 12 15 17 10"/><line x1="12" x2="12" y1="15" y2="3"/></svg>'),
                  span([text('Download PDF')]),
                ],
              ),
            ]),
          ],
        ),
      ]),

      // 2. Main Content
      div(classes: 'max-w-6xl mx-auto', [
        if (viewMode == 'pdf')
          _buildPdfView()
        else
          _buildInteractiveView(filteredPrs),
      ]),

      // 3. Floating Bottom Stack Dock (All 11 Stacks)
      _buildFloatingDock(),
    ]);
  }

  Component _buildPdfView() {
    return div(
      classes:
          'backdrop-blur-2xl bg-neutral-950/80 border border-white/10 rounded-3xl p-4 sm:p-6 shadow-2xl',
      [
        div(
          classes:
              'flex items-center justify-between mb-4 pb-3 border-b border-white/10',
          [
            div(classes: 'flex items-center gap-2', [
              const RawText(
                  '<svg class="w-5 h-5 text-emerald-400" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14.5 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7.5L14.5 2z"/><polyline points="14 2 14 8 20 8"/></svg>'),
              h2(classes: 'text-base font-semibold text-white', [
                text('Reginald_Alfret_Resume.pdf'),
              ]),
              span(
                classes:
                    'text-xs font-mono text-neutral-400 px-2 py-0.5 rounded bg-white/5 border border-white/5',
                [text('1 Page Visual Resume')],
              ),
            ]),
            a(
              href: '/Reginald_Alfret_Resume.pdf',
              target: Target.blank,
              classes:
                  'text-xs text-emerald-400 hover:text-emerald-300 inline-flex items-center gap-1',
              [
                span([text('Open in new window')]),
                const RawText(
                    '<svg class="w-3.5 h-3.5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/><polyline points="15 3 21 3 21 9"/><line x1="10" x2="21" y1="14" y2="3"/></svg>'),
              ],
            ),
          ],
        ),
        div(
          classes:
              'w-full h-[82vh] rounded-2xl overflow-hidden border border-white/5 bg-neutral-900/50',
          [
            iframe(
              [],
              src: '/Reginald_Alfret_Resume.pdf#view=FitH',
              classes: 'w-full h-full border-0',
              attributes: {'title': 'Reginald Alfret V — Resume PDF'},
            ),
          ],
        ),
      ],
    );
  }

  Component _buildInteractiveView(List<Contribution> filteredPrs) {
    return div(classes: 'space-y-6', [
      // Hero Header Card
      div(
        classes:
            'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 sm:p-8 md:p-10 shadow-2xl relative overflow-hidden',
        [
          div(
            classes:
                'absolute -right-20 -top-20 w-80 h-80 rounded-full bg-emerald-500/10 blur-3xl pointer-events-none',
            [],
          ),
          div(classes: 'relative z-10 space-y-4', [
            div(classes: 'flex flex-wrap items-center gap-2', [
              span(
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-mono bg-emerald-500/10 border border-emerald-500/20 text-emerald-300',
                [
                  span(classes: 'w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse', []),
                  text('30 Merged PRs Across Big Tech & Open Source'),
                ],
              ),
              span(
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-mono bg-teal-500/10 border border-teal-500/20 text-teal-300',
                [text('Dart 3.13 · Jaspr 0.23 SSR · Obsidian Theme')],
              ),
            ]),
            div([
              h1(
                classes:
                    'text-3xl sm:text-4xl md:text-5xl font-black tracking-tight text-white',
                [text('Reginald Alfret V')],
              ),
              p(
                classes:
                    'text-base sm:text-lg font-medium text-emerald-400 tracking-wide mt-1',
                [
                  text(
                      'Open-Source Contributor · AI & Data Science Engineer · Software Developer'),
                ],
              ),
            ]),
            p(
              classes:
                  'text-sm text-neutral-300 max-w-3xl leading-relaxed',
              [
                text(
                    'Passionate software engineer with 30 merged pull requests across premier organizations including Apple, Google, Microsoft, Meta, AWS, NVIDIA, NASA, and Netflix. Specialized in production-grade AI/ML systems, cloud infrastructure, and modern cross-platform web architectures.'),
              ],
            ),
            div(classes: 'flex flex-wrap items-center gap-3 pt-2 text-xs font-mono', [
              a(
                href: 'mailto:reginaldalfret.v@gmail.com',
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/5 hover:bg-white/10 border border-white/10 text-neutral-300 hover:text-white transition-colors',
                [text('✉ reginaldalfret.v@gmail.com')],
              ),
              a(
                href: 'https://linkedin.com/in/reginald-alfret',
                target: Target.blank,
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/5 hover:bg-white/10 border border-white/10 text-neutral-300 hover:text-white transition-colors',
                [text('in linkedin.com/in/reginald-alfret')],
              ),
              a(
                href: 'https://github.com/reginaldalfret',
                target: Target.blank,
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/5 hover:bg-white/10 border border-white/10 text-neutral-300 hover:text-white transition-colors',
                [text('⌥ github.com/reginaldalfret')],
              ),
              span(
                classes:
                    'inline-flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-white/5 border border-white/10 text-neutral-400',
                [text('📍 Bengaluru, India')],
              ),
            ]),
          ]),
        ],
      ),

      // Open Source Section (30 Merged PRs)
      div(
        classes:
            'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-6',
        [
          div(classes: 'flex flex-wrap items-center justify-between gap-4', [
            div([
              div(classes: 'flex items-center gap-2', [
                span(classes: 'text-lg', [text('🌐')]),
                h2(classes: 'text-xl font-bold text-white', [
                  text('30 Merged Open-Source Contributions'),
                ]),
              ]),
              p(classes: 'text-xs text-neutral-400 mt-0.5', [
                text(
                    'High-impact upstream PRs merged into tier-one repositories worldwide'),
              ]),
            ]),

            // Category Filter Tabs
            div(
              classes:
                  'flex items-center bg-white/5 border border-white/10 rounded-xl p-1 text-xs',
              [
                _buildFilterButton('All (30)', PrCategory.all),
                _buildFilterButton('Big Tech', PrCategory.bigTech),
                _buildFilterButton('AI / ML', PrCategory.aiMl),
                _buildFilterButton('Cloud & Infra', PrCategory.cloudInfra),
              ],
            ),
          ]),

          // PRs Grid
          div(
            classes:
                'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3 sm:gap-4',
            filteredPrs.map((pr) => _buildPrCard(pr)).toList(),
          ),
        ],
      ),

      // Experience Section
      div(
        classes:
            'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-6',
        [
          div(classes: 'flex items-center gap-2', [
            span(classes: 'text-lg', [text('💼')]),
            h2(classes: 'text-xl font-bold text-white', [text('Work Experience')]),
          ]),
          div(
            classes: 'grid grid-cols-1 md:grid-cols-2 gap-4',
            kExperiences.map((exp) => _buildExperienceCard(exp)).toList(),
          ),
        ],
      ),

      // Projects Section
      div(
        classes:
            'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-6',
        [
          div(classes: 'flex items-center gap-2', [
            span(classes: 'text-lg', [text('🚀')]),
            h2(classes: 'text-xl font-bold text-white', [
              text('Featured Technical Projects'),
            ]),
          ]),
          div(
            classes: 'grid grid-cols-1 md:grid-cols-3 gap-4',
            kProjects.map((p) => _buildProjectCard(p)).toList(),
          ),
        ],
      ),

      // Achievements & Certifications
      div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-6', [
        // Achievements
        div(
          classes:
              'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 shadow-2xl space-y-4',
          [
            div(classes: 'flex items-center gap-2', [
              span(classes: 'text-lg', [text('🏆')]),
              h2(classes: 'text-lg font-bold text-white', [
                text('Key Achievements & Awards'),
              ]),
            ]),
            div(
              classes: 'space-y-2.5',
              kAchievements.map((ach) => _buildAchievementItem(ach)).toList(),
            ),
          ],
        ),

        // Certifications
        div(
          classes:
              'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 shadow-2xl space-y-4',
          [
            div(classes: 'flex items-center gap-2', [
              span(classes: 'text-lg', [text('📜')]),
              h2(classes: 'text-lg font-bold text-white', [
                text('Licenses & Certifications'),
              ]),
            ]),
            div(
              classes: 'space-y-2.5',
              kCertifications.map((cert) => _buildCertificationItem(cert)).toList(),
            ),
          ],
        ),
      ]),

      // Multi-Stack Showcase
      div(
        classes:
            'backdrop-blur-2xl bg-neutral-950/70 border border-white/10 rounded-3xl p-6 sm:p-8 shadow-2xl space-y-6',
        [
          div(classes: 'flex items-center justify-between', [
            div([
              div(classes: 'flex items-center gap-2', [
                span(classes: 'text-lg', [text('⚡')]),
                h2(classes: 'text-xl font-bold text-white', [
                  text('Multi-Stack Architecture Portfolio'),
                ]),
              ]),
              p(classes: 'text-xs text-neutral-400 mt-0.5', [
                text(
                    'The exact same liquid-glass obsidian resume compiled natively across 11 industry tech stacks'),
              ]),
            ]),
          ]),
          div(
            classes:
                'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-3.5',
            kStacks.map((st) => _buildStackCard(st)).toList(),
          ),
        ],
      ),

      // Footer
      div(
        classes: 'text-center py-6 border-t border-white/5 space-y-2 text-xs text-neutral-500 font-mono',
        [
          div(classes: 'text-neutral-400', [
            text('BETTER TECHNOLOGY • HAPPIER PEOPLE'),
          ]),
          div([
            text('Built with '),
            span(classes: 'text-emerald-400 font-bold', [text('Jaspr (Dart)')]),
            text(' & Tailwind CSS · Reginald Alfret V'),
          ]),
        ],
      ),
    ]);
  }

  Component _buildFilterButton(String label, PrCategory category) {
    final isSelected = activeCategory == category;
    return button(
      onClick: () => setCategory(category),
      type: ButtonType.button,
      classes: isSelected
          ? 'px-3 py-1.5 rounded-lg font-medium transition-all bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 shadow-sm'
          : 'px-3 py-1.5 rounded-lg font-medium transition-all text-neutral-400 hover:text-white',
      [text(label)],
    );
  }

  Component _buildPrCard(Contribution pr) {
    String badgeClass;
    String badgeText;
    switch (pr.category) {
      case PrCategory.bigTech:
        badgeClass = 'bg-blue-500/10 text-blue-400 border-blue-500/20';
        badgeText = 'Big Tech';
        break;
      case PrCategory.aiMl:
        badgeClass = 'bg-purple-500/10 text-purple-400 border-purple-500/20';
        badgeText = 'AI / ML';
        break;
      case PrCategory.cloudInfra:
        badgeClass = 'bg-emerald-500/10 text-emerald-400 border-emerald-500/20';
        badgeText = 'Cloud & Infra';
        break;
      case PrCategory.all:
        badgeClass = 'bg-neutral-500/10 text-neutral-400 border-neutral-500/20';
        badgeText = 'Open Source';
        break;
    }

    return a(
      href: pr.url,
      target: Target.blank,
      classes:
          'p-3.5 rounded-2xl bg-white/[0.02] hover:bg-white/[0.05] border border-white/10 hover:border-emerald-500/40 transition-all flex flex-col justify-between group block',
      [
        div(classes: 'space-y-2', [
          div(classes: 'flex items-center justify-between', [
            div(classes: 'flex items-center gap-2', [
              span(classes: 'font-bold text-sm text-white group-hover:text-emerald-400 transition-colors', [
                text(pr.org),
              ]),
              span(classes: 'text-xs text-neutral-500', [text('·')]),
              span(classes: 'font-mono text-xs text-neutral-400', [
                text(pr.repo),
              ]),
            ]),
            span(
              classes:
                  'text-[10px] font-mono px-2 py-0.5 rounded-full border $badgeClass',
              [text(badgeText)],
            ),
          ]),
          p(classes: 'text-xs text-neutral-300 leading-snug font-medium', [
            text(pr.highlight),
          ]),
        ]),
        div(classes: 'flex items-center justify-between text-xs font-mono text-neutral-500 pt-3 border-t border-white/5 mt-3', [
          span(classes: 'text-emerald-400 font-semibold', [text(pr.pr)]),
          span(classes: 'group-hover:translate-x-0.5 group-hover:-translate-y-0.5 transition-transform text-neutral-400', [
            text('View PR ↗'),
          ]),
        ]),
      ],
    );
  }

  Component _buildExperienceCard(Experience exp) {
    return div(
      classes:
          'p-5 rounded-2xl bg-white/[0.02] border border-white/10 hover:border-emerald-500/30 transition-all space-y-3',
      [
        div(classes: 'flex items-start justify-between', [
          div([
            h3(classes: 'font-bold text-base text-white', [text(exp.role)]),
            div(classes: 'text-sm font-semibold text-emerald-400', [
              text(exp.company),
            ]),
          ]),
          div(classes: 'text-right', [
            span(
              classes:
                  'text-xs font-mono px-2.5 py-1 rounded-full bg-white/5 border border-white/10 text-neutral-300',
              [text(exp.period)],
            ),
            div(classes: 'text-[11px] text-neutral-500 mt-1', [
              text(exp.location),
            ]),
          ]),
        ]),
        div(
          classes: 'space-y-1.5 pt-2 border-t border-white/5',
          exp.bullets
              .map((b) => div(classes: 'flex items-start gap-2 text-xs text-neutral-300', [
                    span(classes: 'text-emerald-400 mt-0.5', [text('▹')]),
                    span(classes: 'flex-1 leading-relaxed', [text(b)]),
                  ]))
              .toList(),
        ),
      ],
    );
  }

  Component _buildProjectCard(Project proj) {
    return div(
      classes:
          'p-5 rounded-2xl bg-white/[0.02] border border-white/10 hover:border-emerald-500/30 transition-all flex flex-col justify-between space-y-4',
      [
        div(classes: 'space-y-2.5', [
          div(classes: 'flex items-center justify-between', [
            span(
              classes:
                  'text-[10px] font-mono px-2 py-0.5 rounded-full bg-amber-500/10 text-amber-300 border border-amber-500/20 font-semibold',
              [text(proj.badge)],
            ),
          ]),
          h3(classes: 'font-bold text-sm sm:text-base text-white leading-snug', [
            text(proj.title),
          ]),
          p(classes: 'text-xs text-neutral-400 leading-relaxed', [
            text(proj.description),
          ]),
          div(
            classes: 'space-y-1 pt-1',
            proj.bullets
                .map((b) => div(classes: 'flex items-start gap-1.5 text-xs text-neutral-300', [
                      span(classes: 'text-emerald-400 mt-0.5', [text('•')]),
                      span(classes: 'flex-1 leading-relaxed', [text(b)]),
                    ]))
                .toList(),
          ),
        ]),
        div(
          classes: 'flex flex-wrap gap-1.5 pt-2 border-t border-white/5',
          proj.tags
              .map((tag) => span(
                    classes:
                        'text-[10px] font-mono px-2 py-0.5 rounded bg-white/5 text-neutral-400 border border-white/5',
                    [text(tag)],
                  ))
              .toList(),
        ),
      ],
    );
  }

  Component _buildAchievementItem(Achievement ach) {
    return div(
      classes:
          'flex items-center gap-3 p-3 rounded-xl bg-white/[0.02] border border-white/5',
      [
        span(classes: 'text-xl', [text(ach.icon)]),
        div([
          div(classes: 'text-xs font-semibold text-white', [text(ach.title)]),
          div(classes: 'text-[11px] text-neutral-400', [text(ach.subtitle)]),
        ]),
      ],
    );
  }

  Component _buildCertificationItem(Certification cert) {
    return div(
      classes:
          'flex items-center gap-3 p-3 rounded-xl bg-white/[0.02] border border-white/5',
      [
        span(classes: 'text-xl', [text(cert.icon)]),
        div([
          div(classes: 'text-xs font-semibold text-white', [text(cert.title)]),
          div(classes: 'text-[11px] text-neutral-400', [text(cert.issuer)]),
        ]),
      ],
    );
  }

  Component _buildStackCard(StackItem st) {
    return div(
      classes:
          'p-3.5 rounded-2xl bg-white/[0.02] border ${st.isActive ? "border-emerald-500/50 bg-emerald-500/[0.04]" : "border-white/10 hover:border-white/20"} transition-all flex flex-col justify-between space-y-3',
      [
        div(classes: 'space-y-1.5', [
          div(classes: 'flex items-center justify-between', [
            div(classes: 'flex items-center gap-2', [
              span(classes: 'text-sm font-bold', [text(st.icon)]),
              span(classes: 'font-bold text-xs text-white', [text(st.name)]),
            ]),
            span(
              classes:
                  'text-[9px] font-mono px-1.5 py-0.5 rounded-full ${st.isActive ? "bg-emerald-500/20 text-emerald-300 border border-emerald-500/40" : "bg-white/5 text-neutral-400 border border-white/10"}',
              [text(st.badge)],
            ),
          ]),
          p(classes: 'text-[11px] text-neutral-400 leading-snug', [
            text(st.desc),
          ]),
        ]),
        a(
          href: st.href,
          target: Target.top,
          classes:
              'w-full py-1.5 px-2.5 rounded-xl text-center font-semibold text-xs transition-all block ${st.isActive ? "bg-emerald-500/20 text-emerald-300 border border-emerald-500/30" : "bg-white/5 hover:bg-white/10 text-neutral-300 hover:text-white border border-white/10"}',
          [text(st.isActive ? 'Active Website' : 'Switch Stack ↗')],
        ),
      ],
    );
  }

  Component _buildFloatingDock() {
    return div(
      classes:
          'floating-stack-dock fixed bottom-4 left-1/2 -translate-x-1/2 z-50 no-print',
      [
        div(
          classes:
              'backdrop-blur-xl bg-black/85 border border-white/15 rounded-full py-1.5 px-3.5 shadow-2xl flex items-center gap-2 text-xs overflow-x-auto max-w-[95vw]',
          [
            span(
              classes: 'text-[11px] font-mono text-neutral-400 hidden sm:inline',
              [text('Stack:')],
            ),
            ...kStacks.map((st) {
              if (st.isActive) {
                return span(
                  classes:
                      'inline-flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 font-semibold shadow-sm shrink-0',
                  [
                    span(
                      classes:
                          'w-1.5 h-1.5 rounded-full bg-emerald-400 animate-pulse',
                      [],
                    ),
                    text(st.name),
                  ],
                );
              }
              return a(
                href: st.href,
                target: Target.top,
                classes:
                    'inline-flex items-center gap-1 px-2.5 py-1 rounded-full text-neutral-400 hover:text-white hover:bg-white/10 transition-colors font-medium shrink-0',
                attributes: {'title': 'Switch to ${st.name}'},
                [text(st.name)],
              );
            }).toList(),
          ],
        ),
      ],
    );
  }
}
