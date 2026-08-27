# Design origins

Repo Apprentice is an original orchestration skill informed by several public approaches to code understanding and teaching.

The skill intentionally adapts ideas rather than requiring these projects as runtime dependencies:

- CodeWiki — hierarchical repository decomposition and deterministic code analysis before LLM synthesis:
  https://github.com/FSoft-AI4Code/CodeWiki
- Graphify — structural/evidence graph thinking and explicit uncertainty:
  https://github.com/Graphify-Labs/graphify
- Understand Anything — hybrid static/semantic codebase understanding, guided exploration, and language lessons:
  https://github.com/Egonex-AI/Understand-Anything
- AntiVibe — known concepts, prerequisites, adaptive depth, and explaining what/why/alternatives:
  https://github.com/mohi-devhub/antivibe
- Matt Pocock's skills — mission-based stateful teaching, learning records, and one-question-at-a-time grilling:
  https://github.com/mattpocock/skills
- pstack — source-grounded HOW tracing and evidence-calibrated WHY investigation:
  https://github.com/cursor/plugins/tree/main/pstack
- Codebase-to-Course — bounded curriculum and user-behavior-first course framing:
  https://github.com/zarazhangrui/codebase-to-course
- PocketFlow Tutorial Codebase Knowledge — abstraction/relationship/chapter pipeline and scope limiting:
  https://github.com/The-Pocket/PocketFlow-Tutorial-Codebase-Knowledge

No external skill above is required to use Repo Apprentice.


OMP V0.2 uses OMP's `skill://` protocol for all bundled references and its explicit `/skill:repo-apprentice` invocation flow.
