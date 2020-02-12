.class abstract Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;
.super Ljava/lang/Object;
.source "ServerAuthentication.java"

# interfaces
.implements Lio/olvid/engine/crypto/ServerAuthentication;


# static fields
.field public static final PADDING_LENGTH:I = 0x10

.field public static final PREFIX:[B


# instance fields
.field private final signatureECSdsa:Lio/olvid/engine/crypto/SignatureECSdsa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "authentChallenge"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->PREFIX:[B

    return-void
.end method

.method constructor <init>(Lio/olvid/engine/crypto/SignatureECSdsa;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->signatureECSdsa:Lio/olvid/engine/crypto/SignatureECSdsa;

    return-void
.end method


# virtual methods
.method internalSolveChallenge([BLio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;Lio/olvid/engine/crypto/PRNGService;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 29
    invoke-interface {p4, v0}, Lio/olvid/engine/crypto/PRNGService;->bytes(I)[B

    move-result-object v1

    .line 30
    sget-object v2, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->PREFIX:[B

    array-length v3, v2

    array-length v4, p1

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 31
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    sget-object v2, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->PREFIX:[B

    array-length v2, v2

    array-length v4, p1

    invoke-static {p1, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    sget-object v2, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->PREFIX:[B

    array-length v2, v2

    array-length p1, p1

    add-int/2addr v2, p1

    invoke-static {v1, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object p1, p0, Lio/olvid/engine/crypto/ServerAuthenticationECSdsa;->signatureECSdsa:Lio/olvid/engine/crypto/SignatureECSdsa;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPrivateKey;->getSignaturePrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPrivateKey;

    move-result-object p2

    invoke-virtual {p3}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationECSdsaPublicKey;->getSignaturePublicKey()Lio/olvid/engine/datatypes/key/asymmetric/SignatureECSdsaPublicKey;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v3, p4}, Lio/olvid/engine/crypto/SignatureECSdsa;->sign(Lio/olvid/engine/datatypes/key/asymmetric/SignaturePrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/SignaturePublicKey;[BLio/olvid/engine/crypto/PRNGService;)[B

    move-result-object p1

    .line 35
    array-length p2, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 36
    invoke-static {v1, v5, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    array-length p3, p1

    invoke-static {p1, v5, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
