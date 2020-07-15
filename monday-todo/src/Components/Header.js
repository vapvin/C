import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const Header = styled.header`
    display: flex;
    align-items: center;
    color: #f2f2f2;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 50px;
    background: rgba(10,10,10,0.8);
    z-index: 10;
    box-shadow: 0 1px 5px 2px rgba(0,0,0,0.8);
`;

const List = styled.ul`
    display: flex;
`; 

const Item = styled.li`
    width: 80px;
    height: 50px;
    text-align: center;
`;

const SLink = styled(Link)`
    display: flex;
    height: 50px;
    align-items: center;
    justify-content: center;
`;

export default () => {
    return(
        <Header>
            <List>
                <Item><SLink to="/">HOME</SLink></Item>
                <Item><SLink to="/search">SEARCH</SLink></Item>
            </List>
        </Header>
    )
}
