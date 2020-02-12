.class public Lio/olvid/messenger/AnonymousUsageService;
.super Ljava/lang/Object;
.source "AnonymousUsageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/AnonymousUsageService$LogItem;
    }
.end annotation


# static fields
.field private static final MIN_UPLOAD_BATCH:J = 0xaL

.field private static final MIN_UPLOAD_INTERVAL:J = 0x927c0L

.field public static final TYPE_APP_IN_BACKGROUND:I = 0x65

.field public static final TYPE_APP_IN_FOREGROUND:I = 0x64

.field public static final TYPE_CONTACT_DIRECT_INVITE_SEND:I = 0xa

.field public static final TYPE_CONTACT_INTRODUCTION_SENT:I = 0x14

.field public static final TYPE_GROUP_CREATION_START:I = 0x1e

.field public static final TYPE_MESSAGE_POSTED_DIRECT:I = 0x0

.field public static final TYPE_MESSAGE_POSTED_GROUP:I = 0x1

.field public static final TYPE_PUSH_NOTIFICATION_RECEIVED:I = 0x6e

.field public static final TYPE_SHARED_FILES:I = 0x29

.field public static final TYPE_SHARED_TEXT:I = 0x28

.field private static final apiKeyCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final pseudoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lio/olvid/messenger/AnonymousUsageService$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final usageCollectionWorker:Ljava/lang/Thread;

.field private static final usageUploadPinger:Ljava/lang/Object;

.field private static final usageUploadWorker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->apiKeyCache:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->pseudoCache:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 90
    new-instance v0, Lio/olvid/messenger/AnonymousUsageService$1;

    invoke-direct {v0}, Lio/olvid/messenger/AnonymousUsageService$1;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageCollectionWorker:Ljava/lang/Thread;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageUploadPinger:Ljava/lang/Object;

    .line 159
    new-instance v0, Lio/olvid/messenger/AnonymousUsageService$2;

    invoke-direct {v0}, Lio/olvid/messenger/AnonymousUsageService$2;-><init>()V

    sput-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageUploadWorker:Ljava/lang/Thread;

    .line 243
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageCollectionWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageUploadWorker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 24
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .line 24
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->apiKeyCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 24
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->pseudoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .line 24
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->usageUploadPinger:Ljava/lang/Object;

    return-object v0
.end method

.method public static log(I)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-static {p0, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    return-void
.end method

.method public static log(ILjava/lang/Integer;)V
    .locals 8

    .line 252
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    if-eqz v0, :cond_0

    .line 254
    iget-object v2, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 256
    sget-object v0, Lio/olvid/messenger/AnonymousUsageService;->queue:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lio/olvid/messenger/AnonymousUsageService$LogItem;

    move-object v1, v7

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/olvid/messenger/AnonymousUsageService$LogItem;-><init>([BJILjava/lang/Integer;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
