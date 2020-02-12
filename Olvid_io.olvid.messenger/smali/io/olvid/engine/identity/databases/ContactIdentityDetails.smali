.class public Lio/olvid/engine/identity/databases/ContactIdentityDetails;
.super Ljava/lang/Object;
.source "ContactIdentityDetails.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final CONTACT_IDENTITY:Ljava/lang/String; = "contact_identity"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PHOTO_SERVER_KEY:Ljava/lang/String; = "photo_server_key"

.field static final PHOTO_SERVER_LABEL:Ljava/lang/String; = "photo_server_label"

.field static final PHOTO_URL:Ljava/lang/String; = "photo_url"

.field static final SERIALIZED_JSON_DETAILS:Ljava/lang/String; = "serialized_json_details"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_identity_details"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private photoServerLabel:Lio/olvid/engine/datatypes/UID;

.field private photoUrl:Ljava/lang/String;

.field private serializedJsonDetails:Ljava/lang/String;

.field private version:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 106
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 107
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 108
    iput p4, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    .line 109
    iput-object p5, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;

    .line 111
    iput-object p6, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 112
    iput-object p7, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "contact_identity"

    .line 118
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->contactIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string p1, "owned_identity"

    .line 123
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_1

    const-string p1, "version"

    .line 127
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    const-string p1, "serialized_json_details"

    .line 128
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const-string p1, "photo_url"

    .line 129
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;

    const-string p1, "photo_server_label"

    .line 130
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 132
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    goto :goto_0

    .line 134
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    :goto_0
    const-string p1, "photo_server_key"

    .line 136
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 138
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    goto :goto_1

    .line 141
    :cond_1
    :try_start_2
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_2
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 144
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    :goto_1
    return-void

    .line 125
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 120
    :catch_2
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactIdentityDetails;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getVersion()I

    move-result v6

    .line 92
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v1

    if-nez v1, :cond_1

    move-object v8, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    move-object v8, v1

    .line 94
    :goto_0
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v1

    if-nez v1, :cond_2

    move-object v9, v0

    goto :goto_1

    :cond_2
    new-instance v1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object p3

    invoke-direct {v1, p3}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p3

    check-cast p3, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-object v9, p3

    .line 95
    :goto_1
    new-instance p3, Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 96
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->insert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_identity_details (contact_identity BLOB NOT NULL, owned_identity BLOB NOT NULL, version INT NOT NULL, serialized_json_details TEXT NOT NULL, photo_url TEXT, photo_server_label BLOB, photo_server_key BLOB,  CONSTRAINT PK_contact_identity_details PRIMARY KEY(contact_identity, owned_identity, version));"

    .line 155
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 164
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 154
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 164
    :try_start_2
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactIdentityDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 205
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_identity_details WHERE contact_identity = ? AND owned_identity = ? AND version = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 209
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 210
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 211
    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 212
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 213
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 214
    new-instance p2, Lio/olvid/engine/identity/databases/ContactIdentityDetails;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/ContactIdentityDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 218
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 219
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 218
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 219
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 212
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 218
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 205
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 219
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_identity_details WHERE contact_identity = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 190
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 191
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 192
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 193
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 186
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 194
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;
    .locals 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const-class v2, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonIdentityDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJsonIdentityDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;
    .locals 4

    .line 58
    :try_start_0
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;-><init>()V

    .line 59
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const-class v3, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 60
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setVersion(I)V

    .line 61
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setPhotoUrl(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setPhotoServerLabel([B)V

    .line 64
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setPhotoServerKey([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedJsonDetails()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 41
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    return v0
.end method

.method public insert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO contact_identity_details VALUES (?,?,?,?,?, ?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 173
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 174
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 175
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 176
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x5

    .line 177
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x6

    .line 178
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 179
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    :goto_1
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 180
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 172
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 181
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v2
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_identity_details SET photo_url = ?  WHERE contact_identity = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 232
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 233
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 234
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 235
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 236
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 237
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactIdentityDetails;->photoUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 227
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 238
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public wasCommitted()V
    .locals 0

    return-void
.end method
