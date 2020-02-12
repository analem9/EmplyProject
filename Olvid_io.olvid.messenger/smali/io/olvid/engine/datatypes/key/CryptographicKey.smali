.class public abstract Lio/olvid/engine/datatypes/key/CryptographicKey;
.super Ljava/lang/Object;
.source "CryptographicKey.java"


# static fields
.field public static final ALGO_CLASS_AUTHENTICATED_SYMMETRIC_ENCRYPTION:B = 0x2t

.field public static final ALGO_CLASS_MAC:B = 0x1t

.field public static final ALGO_CLASS_PUBLIC_KEY_ENCRYPTION:B = 0x12t

.field public static final ALGO_CLASS_SERVER_AUTHENTICATION:B = 0x14t

.field public static final ALGO_CLASS_SIGNATURE:B = 0x11t

.field public static final ALGO_CLASS_SYMMETRIC_ENCRYPTION:B


# instance fields
.field protected final algorithmClass:B

.field protected final algorithmImplementation:B

.field protected final key:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(BBLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-byte p1, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmClass:B

    .line 27
    iput-byte p2, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmImplementation:B

    .line 28
    iput-object p3, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->key:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 32
    instance-of v0, p1, Lio/olvid/engine/datatypes/key/CryptographicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    check-cast p1, Lio/olvid/engine/datatypes/key/CryptographicKey;

    .line 36
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmClass()B

    move-result v0

    iget-byte v2, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmClass:B

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getAlgorithmImplementation()B

    move-result v0

    iget-byte v2, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmImplementation:B

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->key:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/key/CryptographicKey;->getKey()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getAlgorithmClass()B
    .locals 1

    .line 43
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmClass:B

    return v0
.end method

.method public getAlgorithmImplementation()B
    .locals 1

    .line 47
    iget-byte v0, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->algorithmImplementation:B

    return v0
.end method

.method public getKey()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lio/olvid/engine/datatypes/DictionaryKey;",
            "Lio/olvid/engine/encoder/Encoded;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/CryptographicKey;->key:Ljava/util/HashMap;

    return-object v0
.end method
