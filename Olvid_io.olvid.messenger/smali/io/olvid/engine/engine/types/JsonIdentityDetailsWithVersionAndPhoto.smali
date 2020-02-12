.class public Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
.super Ljava/lang/Object;
.source "JsonIdentityDetailsWithVersionAndPhoto.java"


# instance fields
.field identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

.field photoServerKey:[B

.field photoServerLabel:[B

.field photoUrl:Ljava/lang/String;

.field version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "details"
    .end annotation

    .line 26
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-object v0
.end method

.method public getPhotoServerKey()[B
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_key"
    .end annotation

    .line 46
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoServerKey:[B

    return-object v0
.end method

.method public getPhotoServerLabel()[B
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_label"
    .end annotation

    .line 36
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoServerLabel:[B

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 56
    iget-object v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 17
    iget v0, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->version:I

    return v0
.end method

.method public setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "details"
    .end annotation

    .line 31
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-void
.end method

.method public setPhotoServerKey([B)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_key"
    .end annotation

    .line 51
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoServerKey:[B

    return-void
.end method

.method public setPhotoServerLabel([B)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_label"
    .end annotation

    .line 41
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoServerLabel:[B

    return-void
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 61
    iput-object p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->photoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 21
    iput p1, p0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->version:I

    return-void
.end method
