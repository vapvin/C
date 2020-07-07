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

const ONE_SEC_IN_MILLIS:u64 = 1000;
const MAX_LEN_Q:u64 = 60;

#[derive(Debug)]
struct CorcularQ {
    items: VecDeque<u32>
}
impl CircularQ {
    fn new() -> CircularQ {
        CircularQ {
            items: VecDeque::<u32>::new()
        }
    }
    fn push_item(&mut self, item: u32) -> (){
        if self.items.len() >= MAX_LEN_Q as usize {
            self.items.pop_front();
        }
        self.items.push_back(item);
    }
    fn get_items(&self) -> &VecDeque<u32>{
        &self.items
    }
}

