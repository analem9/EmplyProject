.class synthetic Lorg/sqlite/core/CorePreparedStatement$1;
.super Ljava/lang/Object;
.source "CorePreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/core/CorePreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    invoke-static {}, Lorg/sqlite/SQLiteConfig$DateClass;->values()[Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/sqlite/core/CorePreparedStatement$1;->$SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I

    :try_start_0
    sget-object v0, Lorg/sqlite/core/CorePreparedStatement$1;->$SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I

    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->TEXT:Lorg/sqlite/SQLiteConfig$DateClass;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConfig$DateClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/sqlite/core/CorePreparedStatement$1;->$SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I

    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->REAL:Lorg/sqlite/SQLiteConfig$DateClass;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConfig$DateClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
