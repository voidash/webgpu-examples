#! /usr/bin/env run-cargo-script 

//! This is crate doc comment
//!

use std::env;

fn main() {
    let mystr = r#"
                0x3e2f585da55c9ad1,
                0x4294213d86c18183,
                0x382844c88b623732,
                0x92ad2afd19103e18,
                0x1d794e4fac7cf0b9,
                0x0bd592fc7d825ec8,
        "#; 
    // convert to string
    mystr.split(",").iter().map(|a| println!("{:?}",a));
    println!("this is not working");
}


