extern crate reqwest;

use std::time::SystemTime;
use std::fs::File;
use std::io::prelude::*;

fn write_file(filename: &str, data: &str){
    let bytes = data.as_bytes();
    let mut file = File::create(filename).expect("Error Creating File");
    file.write_all(bytes).expect("Error Writing File");
}

fn read_file(filename: &str) -> String{
    let mut file = File::open(filename).expect("Error File Open");
    let mut contents = String::new();
}