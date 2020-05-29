import React from "react";
import Intro from "./intro";
import Photos from "./photos";
import Friends from "./friends";
import PostsContainer from "./posts_container";

export default class Timeline extends React.Component {
    render() {
        const { user, currentUser } = this.props;

        return (
            <div className="profile-page-container">
                <div className="profile-body-left">
                    <Intro user={user} currentUser={currentUser} updateUser={this.props.updateUser} />
                    <Photos user={user} currentUser={currentUser} />
                    <Friends user={user} currentUser={currentUser} />
                    <p className="p-footer">June © 2020</p>
                </div>
                <div className="profile-body-right">
                    <PostsContainer user={user} currentUser={currentUser} />
                </div>
            </div>
        )
    }
}

