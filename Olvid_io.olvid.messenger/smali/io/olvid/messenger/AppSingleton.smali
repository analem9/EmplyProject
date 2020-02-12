.class public Lio/olvid/messenger/AppSingleton;
.super Ljava/lang/Object;
.source "AppSingleton.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final FIREBASE_TOKEN_SHARED_PREFERENCE_KEY:Ljava/lang/String; = "firefase_token"

.field private static final LAST_IDENTITY_SHARED_PREFERENCE_KEY:Ljava/lang/String; = "last_identity"

.field private static instance:Lio/olvid/messenger/AppSingleton;


# instance fields
.field private final availableIdentities:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contactNamesCache:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currentIdentity:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lio/olvid/messenger/databases/AppDatabase;

.field private final engine:Lio/olvid/engine/engine/Engine;

.field private final engineNotificationProcessor:Lio/olvid/messenger/EngineNotificationProcessor;

.field private final jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lio/olvid/messenger/AppSingleton;

    invoke-direct {v0}, Lio/olvid/messenger/AppSingleton;-><init>()V

    sput-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 53
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 54
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1001b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 56
    invoke-static {}, Lio/olvid/messenger/AndroidNotificationManager;->createChannels()V

    .line 60
    :try_start_0
    new-instance v0, Lio/olvid/engine/engine/Engine;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lio/olvid/messenger/AppSingleton$1;

    invoke-direct {v2, p0}, Lio/olvid/messenger/AppSingleton$1;-><init>(Lio/olvid/messenger/AppSingleton;)V

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/olvid/engine/engine/Engine;-><init>(Ljava/io/File;Lio/olvid/engine/Logger$LogOutputter;I)V

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->engine:Lio/olvid/engine/engine/Engine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    new-instance v0, Lio/olvid/messenger/EngineNotificationProcessor;

    iget-object v1, p0, Lio/olvid/messenger/AppSingleton;->engine:Lio/olvid/engine/engine/Engine;

    invoke-direct {v0, v1}, Lio/olvid/messenger/EngineNotificationProcessor;-><init>(Lio/olvid/engine/engine/Engine;)V

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->engineNotificationProcessor:Lio/olvid/messenger/EngineNotificationProcessor;

    .line 90
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->db:Lio/olvid/messenger/databases/AppDatabase;

    .line 91
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    .line 92
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->db:Lio/olvid/messenger/databases/AppDatabase;

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->ownedIdentityDao()Lio/olvid/messenger/databases/dao/OwnedIdentityDao;

    move-result-object v0

    invoke-interface {v0}, Lio/olvid/messenger/databases/dao/OwnedIdentityDao;->getAll()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->availableIdentities:Landroidx/lifecycle/LiveData;

    .line 94
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lio/olvid/messenger/AppSingleton;->contactNamesCache:Landroidx/lifecycle/MutableLiveData;

    .line 96
    new-instance v0, Lio/olvid/messenger/AppSingleton$2;

    invoke-direct {v0, p0}, Lio/olvid/messenger/AppSingleton$2;-><init>(Lio/olvid/messenger/AppSingleton;)V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/olvid/messenger/AppSingleton$3;

    invoke-direct {v2, p0, v0}, Lio/olvid/messenger/AppSingleton$3;-><init>(Lio/olvid/messenger/AppSingleton;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Engine"

    const-string v2, "Error starting obv engine!"

    .line 84
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lio/olvid/messenger/AppSingleton;)Lio/olvid/messenger/databases/AppDatabase;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->db:Lio/olvid/messenger/databases/AppDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->contactNamesCache:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/LiveData;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->availableIdentities:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method static synthetic access$300(Lio/olvid/messenger/AppSingleton;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$400(Lio/olvid/messenger/AppSingleton;)Lio/olvid/engine/engine/Engine;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->engine:Lio/olvid/engine/engine/Engine;

    return-object p0
.end method

.method public static getAvailableIdentities()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;>;"
        }
    .end annotation

    .line 179
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->availableIdentities:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static getContactCustomDisplayName([B)Ljava/lang/String;
    .locals 2

    .line 282
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v1, p0}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContactNameCache()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/HashMap<",
            "Lio/olvid/messenger/databases/AppDatabase$BytesKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 278
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getInstance()Lio/olvid/messenger/AppSingleton;

    move-result-object v0

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->contactNamesCache:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static getCurrentIdentity()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;"
        }
    .end annotation

    .line 202
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public static getEngine()Lio/olvid/engine/engine/Engine;
    .locals 1

    .line 270
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->engine:Lio/olvid/engine/engine/Engine;

    return-object v0
.end method

.method public static getInstance()Lio/olvid/messenger/AppSingleton;
    .locals 1

    .line 266
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    return-object v0
.end method

.method public static getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .line 274
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public static reloadCurrentIdentity()V
    .locals 2

    .line 198
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {v0, v1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    return-void
.end method

.method static retrieveFirebaseToken()Ljava/lang/String;
    .locals 3

    .line 240
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firefase_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static storeFirebaseToken(Ljava/lang/String;)V
    .locals 2

    .line 234
    sget-object v0, Lio/olvid/messenger/AppSingleton;->instance:Lio/olvid/messenger/AppSingleton;

    iget-object v0, v0, Lio/olvid/messenger/AppSingleton;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firefase_token"

    .line 235
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateCachedCustomDisplayName([BLjava/lang/String;)V
    .locals 2

    .line 289
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getContactNameCache()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 293
    new-instance v1, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    invoke-direct {v1, p0}, Lio/olvid/messenger/databases/AppDatabase$BytesKey;-><init>([B)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getInstance()Lio/olvid/messenger/AppSingleton;

    move-result-object p0

    iget-object p0, p0, Lio/olvid/messenger/AppSingleton;->contactNamesCache:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public generateIdentity(Landroid/content/Context;Ljava/lang/String;Ljava/util/UUID;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 7

    .line 206
    new-instance v6, Lio/olvid/messenger/AppSingleton$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/olvid/messenger/AppSingleton$4;-><init>(Lio/olvid/messenger/AppSingleton;Ljava/lang/String;Lio/olvid/engine/engine/types/JsonIdentityDetails;Ljava/util/UUID;Landroid/content/Context;)V

    invoke-static {v6}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AppSingleton;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/olvid/messenger/databases/entity/OwnedIdentity;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    .line 131
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "last_identity"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {v0}, Lio/olvid/engine/Logger;->fromHexString(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v1, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 140
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto :goto_2

    .line 143
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    .line 144
    iget-object v6, v5, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 145
    invoke-virtual {p0, v5}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_7

    .line 150
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto :goto_2

    .line 127
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    invoke-virtual {p0, p1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    goto :goto_2

    .line 124
    :cond_6
    invoke-virtual {p0, v1}, Lio/olvid/messenger/AppSingleton;->selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public selectIdentity(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
    .locals 3

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->availableIdentities:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->availableIdentities:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    iget-object v1, p1, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_identity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    iget-object v0, p0, Lio/olvid/messenger/AppSingleton;->currentIdentity:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
