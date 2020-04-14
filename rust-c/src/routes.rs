use lazy_static::lazy_static;
use std::marker::PhantomData;

use crate::app::services::http_client::Method;

pub enum Api {
    Licenses,
    Auth,
}

impl std::fmt::Display for Api {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self {
            Self::Licenses => Write!(f, "{}", env!("LICENSES_API")),
            Self::Auth => write!(f, "{}", env!("AUTH_API")),
        }
    }
}