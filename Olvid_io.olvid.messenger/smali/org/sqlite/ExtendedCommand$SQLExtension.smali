.class public interface abstract Lorg/sqlite/ExtendedCommand$SQLExtension;
.super Ljava/lang/Object;
.source "ExtendedCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/ExtendedCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SQLExtension"
.end annotation


# virtual methods
.method public abstract execute(Lorg/sqlite/core/DB;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
