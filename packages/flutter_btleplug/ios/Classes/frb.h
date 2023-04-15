#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

#define PERIPHERALSTATE_CONNECTED 2

#define CHARACTERISTICPROPERTY_BROADCAST 1

#define CHARACTERISTICPROPERTY_READ 2

#define CHARACTERISTICPROPERTY_WRITEWITHOUTRESPONSE 4

#define CHARACTERISTICPROPERTY_WRITE 8

#define CHARACTERISTICPROPERTY_NOTIFY 16

#define CHARACTERISTICPROPERTY_INDICATE 32

#define CHARACTERISTICPROPERTY_AUTHENTICATEDSIGNEDWRITES 64

#define SERVICE_DATA_16_BIT_UUID 22

#define SERVICE_DATA_32_BIT_UUID 32

#define SERVICE_DATA_128_BIT_UUID 33

typedef struct dispatch_object_s dispatch_object_s;

typedef struct dispatch_object_s *dispatch_queue_t;

typedef const struct dispatch_object_s *dispatch_queue_attr_t;

#define DISPATCH_QUEUE_SERIAL (dispatch_queue_attr_t)0

extern dispatch_queue_t dispatch_queue_create(const char *label, dispatch_queue_attr_t attr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_init);
    dummy_var ^= ((int64_t) (void*) wire_ble_scan);
    dummy_var ^= ((int64_t) (void*) wire_ble_stop_scan);
    dummy_var ^= ((int64_t) (void*) wire_create_log_stream);
    dummy_var ^= ((int64_t) (void*) new_StringList_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
