.class public Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;
.super Ljava/lang/Object;
.source "DiscussionCustomization.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/entity/DiscussionCustomization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorJson"
.end annotation


# instance fields
.field alpha:F

.field color:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->color:I

    .line 109
    iput p2, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->alpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 121
    iget v0, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->alpha:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 113
    iget v0, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->color:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 125
    iput p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->alpha:F

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 117
    iput p1, p0, Lio/olvid/messenger/databases/entity/DiscussionCustomization$ColorJson;->color:I

    return-void
.end method
