#[macro_use]
extern crate nickel;
extern crate rustc_serialize;
extern crate scan_dir;
extern crate csv;

use std::ops::Deref;
use std::collections::BTreeMap;
use std::collections::HashMap;
use std::{thread, time};
use std::collections::VecDeque;
use std::sync::Arc;
use std::sync::Mutex;
use std::io::prelude::*;
use std::fs::File;
use std::fs;
use std::process;
use std::env;
use scan_dir::ScanDir;
use std::str::FromStr;

use nickel::{Nickel, HttpRouter};
use rustc_serialize::json::{Json,ToJson};
