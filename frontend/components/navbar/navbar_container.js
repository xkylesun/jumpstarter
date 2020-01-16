import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';

import Navbar from './navbar';

const mapStateToProps = (props) => {
    return {
        currentUserId: props.session.currentUserId
    };
};

const mapDispatchToProps = dispatch => {
    return {
        logout: () => dispatch(logout())
    }
};

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);
