contract;

// ANCHOR: abi
abi Counter {
    #[storage(read, write)]
    fn increment();

    #[storage(read, write)]
    fn decrement();

    #[storage(read)]
    fn count() -> u64;
}
// ANCHOR_END: abi
// ANCHOR: counter
storage {
    counter: u64 = 0,
}

impl Counter for Contract {
    #[storage(read, write)]
    fn increment() {
        storage.counter += 1;
    }

    #[storage(read, write)]
    fn decrement() {
        storage.counter -= 1;
    }

    #[storage(read)]
    fn count() -> u64 {
        storage.counter
    }
}
// ANCHOR_END: counter
