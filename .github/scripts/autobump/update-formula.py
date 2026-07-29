#!/usr/bin/env python3
"""Usage: update-formula.py <formula_file> <version> <formula> <tag_prefix> <url_style> <upstream_repo> <checksums_file> <arch>..."""
import re
import sys


def load_checksums(path):
    checksums = {}
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            arch, sha = line.split("=", 1)
            checksums[arch] = sha
    return checksums


def main():
    formula_file, version, formula, tag_prefix, style, repo, checksums_file, *archs = sys.argv[1:]
    checksums = load_checksums(checksums_file)

    base = f"https://github.com/{repo}/releases/download/{tag_prefix}{version}"

    with open(formula_file) as f:
        content = f.read()

    content = re.sub(r'version "[^"]+"', f'version "{version}"', content)

    for arch in archs:
        if style == "rust":
            new_url = f"{base}/{formula}-{version}-{arch}.tar.gz"
            content = re.sub(
                rf'(url ")[^"]+{re.escape(arch)}\.tar\.gz"',
                f'url "{new_url}"',
                content,
            )
        elif style == "goreleaser":
            new_url = f"{base}/{formula}@v{version}_{arch}.tar.gz"
            content = re.sub(
                rf'(url ")[^"]+{re.escape(arch)}\.tar\.gz"',
                f'url "{new_url}"',
                content,
            )
        elif style == "otelcol":
            new_url = f"{base}/otelcol-contrib_{version}_{arch}.tar.gz"
            content = re.sub(r'(url ")[^"]+"', f'url "{new_url}"', content)

        sha = checksums.get(arch, "")
        if sha:
            if style in ("rust", "goreleaser"):
                content = re.sub(
                    rf'({re.escape(arch)}\.tar\.gz"\n\s+sha256 ")[a-f0-9]+"',
                    rf'\g<1>{sha}"',
                    content,
                )
            elif style == "otelcol":
                content = re.sub(r'sha256 "[a-f0-9]+"', f'sha256 "{sha}"', content)

    with open(formula_file, "w") as f:
        f.write(content)

    print(content)


if __name__ == "__main__":
    main()
