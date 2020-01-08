import React from "react"
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root"

document.addEventListener("DOMContentLoaded", () => {
    const store = configureStore();
    const root = document.getElementById("root");
    ReactDOM.render(<Root store={store} />, root);

    // test
    window.getState = store.getState;
    window.dispatch = store.dispatch;
});


// test - success on 2020/1/6
// import * as SessionUtil from "./utils/session"
// window.login = SessionUtil.login;
// window.signup = SessionUtil.signup;
// window.update = SessionUtil.update;
// window.logout = SessionUtil.logout;

// test
import * as ProjectUtil from "./utils/project_util"
window.fetchProjects = ProjectUtil.fetchProjects;
window.fetchProject = ProjectUtil.fetchProject;
window.createProject = ProjectUtil.createProject;
window.updateProject = ProjectUtil.updateProject;
window.deleteProject = ProjectUtil.deleteProject;