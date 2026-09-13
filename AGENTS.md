# Repository Guidelines

This is a public-facing engineering portfolio. Keep changes focused, factual, and safe to publish.

## Project shape

- This is a Jekyll portfolio with Markdown/Liquid pages, project collection entries in `_projects/`, posts in `_posts/`, layouts in `_layouts/`, includes in `_includes/`, and navigation data in `_data/`.
- The main stylesheet is `assets/css/main.scss`; frontend JavaScript is `assets/js/main.js`. The site uses no frontend framework.
- `_config.yml` enables the `projects` collection and assigns `project` and `post` layouts by default. Preserve existing front matter and permalink conventions.
- `_site/` is generated output. Edit source files instead of generated HTML; do not commit `_site/`, Jekyll caches, `.bundle/`, `vendor/`, or other ignored build artifacts.

## Validation

- Install dependencies with `bundle install` when needed.
- Build locally with `bundle exec jekyll build`; `make install`, `make watch`, and `make drafts` are available shortcuts.
- Serve locally with `bundle exec jekyll serve` and inspect `http://127.0.0.1:4000` for visual changes.
- GitHub Pages builds with Ruby 3.3 and deploys `_site/` through [.github/workflows/pages.yml](.github/workflows/pages.yml), passing the Pages-provided `--baseurl`. Test internal links with Jekyll's `relative_url` filter so subpath deployments work.

## Content conventions

- Preserve the existing front matter and layout conventions when adding pages, posts, or projects.
- Use [_templates/project-case-study.md](_templates/project-case-study.md) for new project case studies and [_templates/technical-note.md](_templates/technical-note.md) for posts. Use `YYYY-MM-DD-title.md` filenames for posts.
- Keep portfolio content factual and suitable for publication.
- Use measurable outcomes only when they can be supported publicly; do not invent metrics or implementation details.

## Editing conventions

- Keep changes focused and preserve the existing custom responsive design.
- Reuse existing CSS variables and component classes before introducing new ones, and preserve the custom responsive design.
- Keep Liquid changes compatible with the layouts/includes and use Jekyll filters such as `relative_url` for internal links.
- Do not commit generated `_site/`, Jekyll caches, or local Bundler artifacts.
- After source changes, run the Jekyll build; for visual changes, also inspect the local served site.

See [README.md](README.md) for setup, publishing, and deployment details.
