
use serde::Deserialize;
use serde::Serialize;
use serde_qs as qs;
use uuid::Uuid;
use yew::callback::Callback;
use yew::format::Text;
use yew::services::fetch::{FetchService, FetchTask, Request, Response, StatusCode};
use yew::services::storage::{Area, StorageService};
use yew::ComponentLink;

use crate::app::app::{Model as App, Msg as AppMsg};
use crate::app::pages::login::AuthResponse;
use crate::app::services::routes::Route;

pub enum Method {
    Get,
    Post,
    Patch,
    Delete,
}