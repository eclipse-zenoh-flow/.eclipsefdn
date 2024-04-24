local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-zenoh-flow') {
  settings+: {
    dependabot_alerts_enabled_for_new_repositories: false,
    dependabot_security_updates_enabled_for_new_repositories: false,
    dependency_graph_enabled_for_new_repositories: false,
    description: "",
    members_can_change_project_visibility: false,
    members_can_change_repo_visibility: false,
    members_can_create_teams: false,
    members_can_delete_repositories: false,
    name: "Zenoh-Flow Project",
    packages_containers_internal: false,
    packages_containers_public: false,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('zenoh-flow') {
      allow_auto_merge: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "zenoh-flow aims at providing a zenoh-based data-flow programming framework for computations that span from the cloud to the device.",
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "autonomous-vehicles",
        "data-science",
        "dataflow-programming",
        "machine-learning",
        "robotics",
        "ros2",
        "rust-lang"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('zenoh-flow-python') {
      allow_auto_merge: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Zenoh Flow Python API",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
