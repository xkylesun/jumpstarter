import { RECEIVE_PROJECT } from "../actions/project_actions";
import { RECEIVE_REWARD } from "../actions/reward_actions";

export const rewardsReducer = (state = {}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_PROJECT:
            return Object.assign({}, state, action.payload.rewards);
        case RECEIVE_REWARD:
            return action.payload.rewards;
        default:
            return state;
    };
};