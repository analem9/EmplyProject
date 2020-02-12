.class public Lio/olvid/messenger/databases/AppDatabase$BytesKey;
.super Ljava/lang/Object;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesKey"
.end annotation


# instance fields
.field final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 997
    instance-of v0, p1, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 998
    :cond_0
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    check-cast p1, Lio/olvid/messenger/databases/AppDatabase$BytesKey;

    iget-object p1, p1, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1003
    iget-object v0, p0, Lio/olvid/messenger/databases/AppDatabase$BytesKey;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
