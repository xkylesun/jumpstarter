import { connect } from "react-redux";
import { fetchProject } from "../../actions/project_actions";
import { createPledge } from "../../actions/pledge_actions";

import { selectRewards } from "../../reducers/selector"
import Project from "./project";

const mapStateToProps = (state, ownProps) => {
    const project = state.entities.projects[ownProps.match.params.projectId]
    var creator;
    if (project) {
        creator = state.entities.users[project.creatorId]
    }
    return {
        id: ownProps.match.params.projectId,
        project: project,
        creator: creator,
        rewards: selectRewards(state, project)
    }
}

const mapDispatchToProps = dispatch => {
    return {
        fetchProject: (id) => dispatch(fetchProject(id)),
        createPledge: (pledge) => dispatch(createPledge(pledge))
    };
}

const ProjectContainer = connect(mapStateToProps, mapDispatchToProps)(Project);

export default ProjectContainer;