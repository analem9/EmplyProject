.class public Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;
.super Ljava/lang/Object;
.source "AttachmentKeyAndMetadata.java"


# instance fields
.field private final key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private final metadata:[B


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;[B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    .line 12
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->metadata:[B

    return-void
.end method


# virtual methods
.method public getKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->key:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getMetadata()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lio/olvid/engine/datatypes/containers/AttachmentKeyAndMetadata;->metadata:[B

    return-object v0
.end method
