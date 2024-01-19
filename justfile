clean:
    flutter clean
    rm -f lib/src/rust/frb_generated*
    cd rust && cargo clean && rm -f src/frb_generated*

update:
    cd rust && cargo update
    flutter pub upgrade

analyze:
    flutter analyze .
    dart run custom_lint

build_runner:
    dart run build_runner build

build_runner_watch:
    dart run build_runner watch --use-polling-watcher

run:
    flutter run
