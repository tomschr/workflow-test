workflow "Triage" {
  on = "issue"
  resolves = ["Comment On New Issues"]
}


action "Comment On New Issues" {
  uses = "actions/github@v1.0.0"
  args = "comment "Hello World" --action=opened" # Only when issues are opened!
  secrets = ["GITHUB_TOKEN"]
}
