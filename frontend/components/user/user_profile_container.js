import { connect } from 'react-redux';
import UserProfile from './user_profile';
import { fetchUserProjects } from "../../actions/project_actions";

const mapStateToProps = (state, ownProps) => {
    return {
        currentUser: state.session.currentUser,
        targetUser: ownProps.match.params.userId,
        backedProject: state.entities.projects.backed,
        createdProject: state.entities.projects.created
    };
};

const mapDispatchToProps = dispatch => {
    return {
        // fetchBackedProject: userId => dispatch(fetchBackedProject(userId)),
        // fetchCreatedProject: userId => dispatch(fetchCreatedProject(userId)),
        fetchUserProjects: filter => dispatch(fetchUserProjects(filter))
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(UserProfile);
