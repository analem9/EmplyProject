.class public interface abstract Lio/olvid/engine/datatypes/ObvDatabase;
.super Ljava/lang/Object;
.source "ObvDatabase.java"


# virtual methods
.method public abstract delete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract insert()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract wasCommitted()V
.end method
