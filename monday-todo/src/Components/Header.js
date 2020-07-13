import React from 'react';
import { Link } from 'react-router-dom';
import styled from 'styled-components';

const Header = styled.header`

`;

const List = styled.ul`
    display: flex;
    &:hover {
        background: #000;
    }
`; 

const Item = styled.li``;

const SLink = styled(Link)``;

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
