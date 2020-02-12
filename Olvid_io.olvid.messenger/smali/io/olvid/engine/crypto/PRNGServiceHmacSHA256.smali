.class Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;
.super Ljava/lang/Object;
.source "PRNGService.java"

# interfaces
.implements Lio/olvid/engine/crypto/PRNGService;


# static fields
.field private static final instance:Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;


# instance fields
.field count:I

.field prng:Lio/olvid/engine/crypto/PRNG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;

    invoke-direct {v0}, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;-><init>()V

    sput-object v0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->instance:Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->prng:Lio/olvid/engine/crypto/PRNG;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->count:I

    .line 23
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 25
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 26
    new-instance v0, Lio/olvid/engine/crypto/PRNGHmacSHA256;

    new-instance v2, Lio/olvid/engine/datatypes/Seed;

    invoke-direct {v2, v1}, Lio/olvid/engine/datatypes/Seed;-><init>([B)V

    invoke-direct {v0, v2}, Lio/olvid/engine/crypto/PRNGHmacSHA256;-><init>(Lio/olvid/engine/datatypes/Seed;)V

    iput-object v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->prng:Lio/olvid/engine/crypto/PRNG;

    return-void
.end method

.method public static getInstance()Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;
    .locals 1

    .line 30
    sget-object v0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->instance:Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->prng:Lio/olvid/engine/crypto/PRNG;

    invoke-interface {v0, p1}, Lio/olvid/engine/crypto/PRNG;->bigInt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized bytes(I)[B
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->prng:Lio/olvid/engine/crypto/PRNG;

    invoke-interface {v0, p1}, Lio/olvid/engine/crypto/PRNG;->bytes(I)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reseed(Lio/olvid/engine/datatypes/Seed;)V
    .locals 1

    .line 36
    new-instance v0, Lio/olvid/engine/crypto/PRNGHmacSHA256;

    invoke-direct {v0, p1}, Lio/olvid/engine/crypto/PRNGHmacSHA256;-><init>(Lio/olvid/engine/datatypes/Seed;)V

    iput-object v0, p0, Lio/olvid/engine/crypto/PRNGServiceHmacSHA256;->prng:Lio/olvid/engine/crypto/PRNG;

    return-void
.end method
