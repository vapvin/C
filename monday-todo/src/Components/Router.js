import React from 'react';
import {BrowserRouter as Router, Route, Redirect, Switch} from 'react-router-dom';
import Home from '../Routes/Home';
import Search from '../Routes/Search'
import Header from '../Components/Header';

export default () => {
    return(
        <Router>
            <>
                <Header />
                <Switch>
                    <Route path="/" exact component={Home}></Route>
                    <Route path="/search" exact component={Search}></Route>
                    <Redirect from="*" to="/" />
                </Switch>
            </>
        </Router>
    )
}