provider "github" {
    token = ""
}

resource "github_repository" "test-terraform" {
    name = "test-terraform"
    description = "my terraform app"
    visibility = "public"
    template {
        owner = "github"
        repository = "terraform-module-template" 
    }
}