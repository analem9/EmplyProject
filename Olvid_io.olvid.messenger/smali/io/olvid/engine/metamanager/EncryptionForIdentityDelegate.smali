.class public interface abstract Lio/olvid/engine/metamanager/EncryptionForIdentityDelegate;
.super Ljava/lang/Object;
.source "EncryptionForIdentityDelegate.java"


# virtual methods
.method public abstract unwrap(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/EncryptedBytes;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract wrap(Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/EncryptedBytes;
.end method
