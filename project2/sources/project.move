module MyModule::Platform {

    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing a crowdfunding project.
    struct Project has store, key {
        total_funds: u64,   // Total tokens raised for the project
        goal: u64,          // Funding goal of the project
        funded: bool,       // Flag to check if the goal is reached
    }

    /// Function to create a new project with a funding goal.
    public fun create_project(owner: &signer, goal: u64) {
        let project = Project {
            total_funds: 0,
            goal,
            funded: false,
        };
        move_to(owner, project);
    }
}
