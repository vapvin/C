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

pub struct Rout<R>{
    pub api: Api,
    pub path: &'static str,
    pub method: Method,
    pub auth: bool,
    pub _marker: PhantomData<R>,
}

use crate::app::models::coupon::Coupon;
use crate::app::models::stripe_coupon::StripeCoupon;
use crate::app::pages::login::LoginResponse;
use yew::format::Json;

pub struct Routes {
    pub login: Route<Json<Result<LoginResponse, failure::Error>>>,
    pub fetch_coupons: Route<Json<Result<Vec<Coupon>, failure::Error>>>,
    pub update_coupon: Route<Json<Result<Coupon, failure::Error>>>,
    pub create_coupon: Route<Json<Result<Coupon, failure::Error>>>,
    pub delete_coupon: Route<()>,
}

// Next Line - Debug..

lazy_static! {
    pub static ref ROUTES: Routes = Routes {
        login: Route {
            aoi: Api::Auth,
            path: "/user/login",
            method: Method::Post,
            
        }
    }
}