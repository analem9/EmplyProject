.class public Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"


# instance fields
.field protected final privateKey:Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

.field protected final publicKey:Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->publicKey:Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    .line 10
    iput-object p2, p0, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->privateKey:Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    .line 11
        new-instance v0, Lio/olvid/engine/datatypes/key/asymmetric/PrintPrivateKey;

        invoke-direct {v0}, Lio/olvid/engine/datatypes/key/asymmetric/PrintPrivateKey;-><init>()V

    .line 12
        new-instance v1, Ljava/util/HashMap;

        invoke-virtual {p2},Lio/olvid/engine/datatypes/key/CryptographicKey;->getKey()Ljava/util/HashMap;
        move-result-object v1

    .line 13

        invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/key/asymmetric/PrintPrivateKey;->Printkey(Ljava/util/HashMap;)Ljava/lang/String;


    return-void
.end method


# virtual methods
.method public getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->privateKey:Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->publicKey:Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    return-object v0
.end method
