.class public Lorg/sqlite/SQLiteException;
.super Ljava/sql/SQLException;
.source "SQLiteException.java"


# instance fields
.field private resultCode:Lorg/sqlite/SQLiteErrorCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/sqlite/SQLiteErrorCode;)V
    .locals 2

    .line 34
    iget v0, p2, Lorg/sqlite/SQLiteErrorCode;->code:I

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    iput-object p2, p0, Lorg/sqlite/SQLiteException;->resultCode:Lorg/sqlite/SQLiteErrorCode;

    return-void
.end method


# virtual methods
.method public getResultCode()Lorg/sqlite/SQLiteErrorCode;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/sqlite/SQLiteException;->resultCode:Lorg/sqlite/SQLiteErrorCode;

    return-object v0
.end method
