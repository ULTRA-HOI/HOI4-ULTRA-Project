import subprocess
import sys
import re
from collections import defaultdict

def print_marker(commits_by_marker, marker, name, f):
    f.write(f"## {name} \n")
    for title, body in commits_by_marker[marker]:
        f.write(f"- {title}\n")
        if body:
            body = body.replace("\n","\n\t- ")
            f.write(f"\t- {body}\n")

# Check arguments
if len(sys.argv) < 3:
    print("Usage: python changelog.py <commit-id> <patch_name>")
    sys.exit(1)

commit_id = sys.argv[1]
patch_name = sys.argv[2]

# Output file
output_file = "changelog.md"

# Run git log to get commit messages from the specified commit ID using UTF-8 encoding
result = subprocess.run(
    ["git", "log", f"{commit_id}..HEAD", "--pretty=format:%s%n%b%n---"],
    stdout=subprocess.PIPE,
    encoding="utf-8"  # Specify UTF-8 encoding for subprocess output
)

# Split the log output into individual commits
commits = result.stdout.strip().split('---')

# Initialize a dictionary to group commits by markers
commits_by_marker = defaultdict(list)

# Regex to find the marker in the commit title
marker_regex = re.compile(r"\[([a-zA-Z0-9_]+)\]")

# Process each commit
for commit in commits:
    lines = commit.strip().splitlines()
    if not lines:
        continue
    
    commit_title = lines[0]
    commit_body = "\n".join(lines[1:]).strip()
    
    # Search for the marker in the title and remove it
    marker_match = marker_regex.search(commit_title)
    if marker_match:
        marker = marker_match.group(1)
        # Remove the marker from the title
        clean_title = marker_regex.sub('', commit_title).strip()
        commits_by_marker[marker].append((clean_title, commit_body))
    else:
        commits_by_marker["No Marker"].append((commit_title, commit_body))



# Write the output to a Markdown file using UTF-8 encoding
with open(output_file, "w", encoding="utf-8") as f:
    f.write(f"# {patch_name}\n\n")
    # Sort markers alphabetically
    sorted_markers = sorted(commits_by_marker.keys())
    
    for marker in sorted_markers:
        if marker == "No Marker" or marker == "NC":
            continue
        print_marker(commits_by_marker, marker, marker, f)
    if "No Marker" in commits_by_marker:
        print_marker(commits_by_marker, "No Marker", "Assorted", f)

print(f"Output written to {output_file}")