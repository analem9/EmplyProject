.class Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;
.super Ljava/lang/Object;
.source "InitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/customClasses/InitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BytesAndSize"
.end annotation


# instance fields
.field private bytes:[B

.field private size:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->bytes:[B

    .line 332
    iput p2, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->size:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 337
    instance-of v0, p1, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 340
    :cond_0
    check-cast p1, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;

    .line 341
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->bytes:[B

    iget-object v2, p1, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->bytes:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->size:I

    iget p1, p1, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->size:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 346
    iget-object v0, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/olvid/messenger/customClasses/InitialView$BytesAndSize;->size:I

    add-int/2addr v0, v1

    return v0
.end method
