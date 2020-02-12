.class public final enum Lorg/sqlite/SQLiteConfig$Pragma;
.super Ljava/lang/Enum;
.source "SQLiteConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/SQLiteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pragma"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$Pragma;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum MMAP_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum READ_UNCOMMITED:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SECURE_DELETE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;


# instance fields
.field public final choices:[Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final pragmaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 272
    new-instance v6, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v1, "OPEN_MODE"

    const/4 v2, 0x0

    const-string v3, "open_mode"

    const-string v4, "Database open-mode flag"

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v6, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 273
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v12

    const-string v8, "SHARED_CACHE"

    const/4 v9, 0x1

    const-string v10, "shared_cache"

    const-string v11, "Enable SQLite Shared-Cache mode, native driver only"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 274
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v6

    const-string v2, "LOAD_EXTENSION"

    const/4 v3, 0x2

    const-string v4, "enable_load_extension"

    const-string v5, "Enable SQLite load_extention() function, native driver only"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 277
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v1, 0x3

    const-string v2, "CACHE_SIZE"

    const-string v3, "cache_size"

    invoke-direct {v0, v2, v1, v3}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 278
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v2, 0x4

    const-string v3, "MMAP_SIZE"

    const-string v4, "mmap_size"

    invoke-direct {v0, v3, v2, v4}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MMAP_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 279
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    const-string v5, "CASE_SENSITIVE_LIKE"

    const-string v6, "case_sensitive_like"

    invoke-direct {v0, v5, v4, v6, v3}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 280
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const-string v6, "COUNT_CHANGES"

    const-string v7, "count_changes"

    invoke-direct {v0, v6, v5, v7, v3}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 281
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v3, 0x7

    const-string v6, "DEFAULT_CACHE_SIZE"

    const-string v7, "default_cache_size"

    invoke-direct {v0, v6, v3, v7}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 282
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    const-string v8, "EMPTY_RESULT_CALLBACKS"

    const-string v9, "empty_result_callback"

    invoke-direct {v0, v8, v7, v9, v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 283
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$Encoding;->values()[Lorg/sqlite/SQLiteConfig$Encoding;

    move-result-object v6

    invoke-static {v6}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x9

    const-string v9, "ENCODING"

    const-string v10, "encoding"

    invoke-direct {v0, v9, v8, v10, v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 284
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xa

    const-string v10, "FOREIGN_KEYS"

    const-string v11, "foreign_keys"

    invoke-direct {v0, v10, v9, v11, v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 285
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0xb

    const-string v11, "FULL_COLUMN_NAMES"

    const-string v12, "full_column_names"

    invoke-direct {v0, v11, v10, v12, v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 286
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/16 v11, 0xc

    const-string v12, "FULL_SYNC"

    const-string v13, "fullsync"

    invoke-direct {v0, v12, v11, v13, v6}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 287
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v6, 0xd

    const-string v12, "INCREMENTAL_VACUUM"

    const-string v13, "incremental_vacuum"

    invoke-direct {v0, v12, v6, v13}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 288
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$JournalMode;->values()[Lorg/sqlite/SQLiteConfig$JournalMode;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xe

    const-string v14, "JOURNAL_MODE"

    const-string v15, "journal_mode"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 289
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v12, 0xf

    const-string v14, "JOURNAL_SIZE_LIMIT"

    const-string v15, "journal_size_limit"

    invoke-direct {v0, v14, v12, v15}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 290
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    const-string v12, "LEGACY_FILE_FORMAT"

    const-string v13, "legacy_file_format"

    invoke-direct {v0, v12, v15, v13, v14}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 291
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$LockingMode;->values()[Lorg/sqlite/SQLiteConfig$LockingMode;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x11

    const-string v14, "LOCKING_MODE"

    const-string v15, "locking_mode"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 292
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "PAGE_SIZE"

    const/16 v14, 0x12

    const-string v15, "page_size"

    invoke-direct {v0, v12, v14, v15}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 293
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "MAX_PAGE_COUNT"

    const/16 v14, 0x13

    const-string v15, "max_page_count"

    invoke-direct {v0, v12, v14, v15}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 294
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v12

    const-string v14, "READ_UNCOMMITED"

    const/16 v15, 0x14

    const-string v13, "read_uncommited"

    invoke-direct {v0, v14, v15, v13, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->READ_UNCOMMITED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 295
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v12

    const-string v13, "RECURSIVE_TRIGGERS"

    const/16 v14, 0x15

    const-string v15, "recursive_triggers"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 296
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v12

    const-string v13, "REVERSE_UNORDERED_SELECTS"

    const/16 v14, 0x16

    const-string v15, "reverse_unordered_selects"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 297
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "true"

    const-string v13, "false"

    const-string v14, "fast"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "SECURE_DELETE"

    const/16 v14, 0x17

    const-string v15, "secure_delete"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SECURE_DELETE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 298
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v12

    const-string v13, "SHORT_COLUMN_NAMES"

    const/16 v14, 0x18

    const-string v15, "short_column_names"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 299
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$SynchronousMode;->values()[Lorg/sqlite/SQLiteConfig$SynchronousMode;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "SYNCHRONOUS"

    const/16 v14, 0x19

    const-string v15, "synchronous"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 300
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$TempStore;->values()[Lorg/sqlite/SQLiteConfig$TempStore;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEMP_STORE"

    const/16 v14, 0x1a

    const-string v15, "temp_store"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 301
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "TEMP_STORE_DIRECTORY"

    const/16 v13, 0x1b

    const-string v14, "temp_store_directory"

    invoke-direct {v0, v12, v13, v14}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 302
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "USER_VERSION"

    const/16 v13, 0x1c

    const-string v14, "user_version"

    invoke-direct {v0, v12, v13, v14}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 303
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "APPLICATION_ID"

    const/16 v13, 0x1d

    const-string v14, "application_id"

    invoke-direct {v0, v12, v13, v14}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 306
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$TransactionMode;->values()[Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "TRANSACTION_MODE"

    const/16 v14, 0x1e

    const-string v15, "transaction_mode"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 307
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$DatePrecision;->values()[Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v21

    const-string v17, "DATE_PRECISION"

    const/16 v18, 0x1f

    const-string v19, "date_precision"

    const-string v20, "\"seconds\": Read and store integer dates as seconds from the Unix Epoch (SQLite standard).\n\"milliseconds\": (DEFAULT) Read and store integer dates as milliseconds from the Unix Epoch (Java standard)."

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 308
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$DateClass;->values()[Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v27

    const-string v23, "DATE_CLASS"

    const/16 v24, 0x20

    const-string v25, "date_class"

    const-string v26, "\"integer\": (Default) store dates as number of seconds or milliseconds from the Unix Epoch\n\"text\": store dates as a string of text\n\"real\": store dates as Julian Dates"

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v27}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 309
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v17, "DATE_STRING_FORMAT"

    const/16 v18, 0x21

    const-string v19, "date_string_format"

    const-string v20, "Format to store and retrieve dates stored as text. Defaults to \"yyyy-MM-dd HH:mm:ss.SSS\""

    const/16 v21, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 310
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "BUSY_TIMEOUT"

    const/16 v13, 0x22

    const-string v14, "busy_timeout"

    const/4 v15, 0x0

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 311
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->values()[Lorg/sqlite/SQLiteConfig$HexKeyMode;

    move-result-object v12

    invoke-static {v12}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v12

    const-string v13, "HEXKEY_MODE"

    const/16 v14, 0x23

    const-string v15, "hexkey_mode"

    invoke-direct {v0, v13, v14, v15, v12}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 312
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    const-string v12, "PASSWORD"

    const/16 v13, 0x24

    const-string v14, "password"

    const/4 v15, 0x0

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v0, 0x25

    new-array v0, v0, [Lorg/sqlite/SQLiteConfig$Pragma;

    .line 269
    sget-object v12, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v13, 0x0

    aput-object v12, v0, v13

    sget-object v12, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v13, 0x1

    aput-object v12, v0, v13

    sget-object v12, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    const/4 v13, 0x2

    aput-object v12, v0, v13

    sget-object v12, Lorg/sqlite/SQLiteConfig$Pragma;->CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v12, v0, v1

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->MMAP_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v9

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v10

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v11

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->READ_UNCOMMITED:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->SECURE_DELETE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->$VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 327
    iput-object p3, p0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 328
    iput-object p4, p0, Lorg/sqlite/SQLiteConfig$Pragma;->description:Ljava/lang/String;

    .line 329
    iput-object p5, p0, Lorg/sqlite/SQLiteConfig$Pragma;->choices:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 323
    invoke-direct/range {v0 .. v5}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Pragma;
    .locals 1

    .line 269
    const-class v0, Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/sqlite/SQLiteConfig$Pragma;

    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$Pragma;
    .locals 1

    .line 269
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->$VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$Pragma;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sqlite/SQLiteConfig$Pragma;

    return-object v0
.end method


# virtual methods
.method public final getPragmaName()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    return-object v0
.end method
