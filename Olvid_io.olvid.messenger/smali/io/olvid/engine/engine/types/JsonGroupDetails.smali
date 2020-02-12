.class public Lio/olvid/engine/engine/types/JsonGroupDetails;
.super Ljava/lang/Object;
.source "JsonGroupDetails.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lio/olvid/engine/engine/types/JsonGroupDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    check-cast p1, Lio/olvid/engine/engine/types/JsonGroupDetails;

    .line 50
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    .line 53
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->description:Ljava/lang/String;

    iget-object p1, p1, Lio/olvid/engine/engine/types/JsonGroupDetails;->description:Ljava/lang/String;

    if-nez v0, :cond_4

    if-nez p1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_5
    :goto_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 40
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->description:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonGroupDetails;->name:Ljava/lang/String;

    return-void
.end method
