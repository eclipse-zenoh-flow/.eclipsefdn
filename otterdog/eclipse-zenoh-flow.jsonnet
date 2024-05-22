local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-zenoh-flow') {
  settings+: {
    description: "",
    name: "Zenoh-Flow Project",
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
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
}
