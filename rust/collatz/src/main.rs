use collatz::run;

fn main() {
    pollster::block_on(run());
}