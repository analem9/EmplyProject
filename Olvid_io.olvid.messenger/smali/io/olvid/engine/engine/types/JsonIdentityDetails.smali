.class public Lio/olvid/engine/engine/types/JsonIdentityDetails;
.super Ljava/lang/Object;
.source "JsonIdentityDetails.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final FORMAT_FIRST_LAST_COMPANY_POSITION:Ljava/lang/String; = "%f %l (%p @ %c)"


# instance fields
.field company:Ljava/lang/String;

.field customFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field position:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    .line 25
    invoke-static {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    .line 26
    invoke-static {p4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    return-void
.end method

.method private static nullOrTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 156
    instance-of v0, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 159
    :cond_0
    check-cast p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 160
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    .line 163
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    return v1

    .line 166
    :cond_6
    :goto_1
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return v1

    .line 169
    :cond_9
    :goto_2
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    return v1

    .line 172
    :cond_c
    :goto_3
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->customFields:Ljava/util/HashMap;

    iget-object p1, p1, Lio/olvid/engine/engine/types/JsonIdentityDetails;->customFields:Ljava/util/HashMap;

    if-nez v0, :cond_d

    if-nez p1, :cond_e

    const/4 v1, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_e
    :goto_4
    return v1
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomFields()Ljava/util/HashMap;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "custom_fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->customFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x310d333c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%f %l (%p @ %c)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 114
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_2
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x310d333c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%f %l (%p @ %c)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 136
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    iget-object v1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    const-string v0, " @ "

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation

    .line 31
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x310d333c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "%f %l (%p @ %c)"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 96
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameFirstLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getDisplayNameSecondLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " ("

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_name"
    .end annotation

    .line 41
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 88
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->company:Ljava/lang/String;

    return-void
.end method

.method public setCustomFields(Ljava/util/HashMap;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "custom_fields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->customFields:Ljava/util/HashMap;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation

    .line 36
    invoke-static {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_name"
    .end annotation

    .line 46
    invoke-static {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-static {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->nullOrTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;->position:Ljava/lang/String;

    return-void
.end method
