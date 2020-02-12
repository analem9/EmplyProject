.class public Lio/olvid/engine/engine/types/identities/ObvIdentity;
.super Ljava/lang/Object;
.source "ObvIdentity.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected final identity:Lio/olvid/engine/datatypes/Identity;

.field protected final identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;


# direct methods
.method public constructor <init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 22
    iput-object p2, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p3, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 33
    invoke-interface {p2, p1, p3}, Lio/olvid/engine/metamanager/IdentityDelegate;->getOwnedIdentityPublishedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-void
.end method

.method public constructor <init>(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/metamanager/IdentityDelegate;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 28
    invoke-interface {p2, p1, p3, p4}, Lio/olvid/engine/metamanager/IdentityDelegate;->getContactIdentityTrustedDetails(Lio/olvid/engine/datatypes/Session;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-void
.end method

.method public static of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    .line 58
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 61
    new-instance v0, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {p1, p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-direct {v0, v1, p0}, Lio/olvid/engine/engine/types/identities/ObvIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    return-object v0

    .line 59
    :cond_0
    new-instance p0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {p0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 84
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    check-cast p1, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object p1, p1, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->computeUniqueUid()Lio/olvid/engine/datatypes/UID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/olvid/engine/datatypes/UID;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    .line 65
    iget-object v1, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 66
    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    .line 67
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 65
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    check-cast p1, Lio/olvid/engine/engine/types/identities/ObvIdentity;

    iget-object p1, p1, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, p1}, Lio/olvid/engine/datatypes/Identity;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBytesIdentity()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identityDetails:Lio/olvid/engine/engine/types/JsonIdentityDetails;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/engine/types/identities/ObvIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
