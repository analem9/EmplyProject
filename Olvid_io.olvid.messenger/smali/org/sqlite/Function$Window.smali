.class public abstract Lorg/sqlite/Function$Window;
.super Lorg/sqlite/Function$Aggregate;
.source "Function.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Window"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lorg/sqlite/Function$Aggregate;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract xInverse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected abstract xValue()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
