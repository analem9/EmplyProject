.class public Lio/olvid/engine/identity/databases/ContactGroupDetails;
.super Ljava/lang/Object;
.source "ContactGroupDetails.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final GROUP_OWNER_AND_UID:Ljava/lang/String; = "group_owner_and_uid"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PHOTO_SERVER_KEY:Ljava/lang/String; = "photo_server_key"

.field static final PHOTO_SERVER_LABEL:Ljava/lang/String; = "photo_server_label"

.field static final PHOTO_URL:Ljava/lang/String; = "photo_url"

.field static final SERIALIZED_JSON_DETAILS:Ljava/lang/String; = "serialized_json_details"

.field static final TABLE_NAME:Ljava/lang/String; = "contact_group_details"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private groupOwnerAndUid:[B

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private photoServerLabel:Lio/olvid/engine/datatypes/UID;

.field private photoUrl:Ljava/lang/String;

.field private serializedJsonDetails:Ljava/lang/String;

.field private version:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    const-string p1, "group_owner_and_uid"

    .line 203
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    :try_start_0
    const-string p1, "owned_identity"

    .line 205
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "version"

    .line 209
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    const-string p1, "serialized_json_details"

    .line 210
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    const-string p1, "photo_url"

    .line 211
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    const-string p1, "photo_server_label"

    .line 212
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 214
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    goto :goto_0

    .line 216
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    :goto_0
    const-string p1, "photo_server_key"

    .line 218
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 220
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    goto :goto_1

    .line 223
    :cond_1
    :try_start_1
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 226
    iput-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    :goto_1
    return-void

    .line 207
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;ILjava/lang/String;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 192
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    .line 193
    iput-object p3, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 194
    iput p4, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    .line 195
    iput-object p5, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    .line 196
    iput-object p6, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    .line 197
    iput-object p7, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 198
    iput-object p8, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method

.method public static copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;
    .locals 13

    move-object v0, p1

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v1, p3, 0x1

    move-object v2, p0

    .line 167
    :try_start_0
    iget-object v3, v2, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v4, "SELECT * FROM contact_group_details WHERE group_owner_and_uid = ?  AND owned_identity = ?  ORDER BY version DESC LIMIT 1;"

    invoke-virtual {v3, v4}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    .line 171
    :try_start_1
    invoke-interface {v3, v4, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v5, 0x2

    .line 172
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 173
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 174
    :try_start_2
    invoke-interface {v5}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v1, "version"

    .line 175
    invoke-interface {v5, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v1, v4

    :cond_1
    move v6, v1

    if-eqz v5, :cond_2

    .line 177
    :try_start_3
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v3, :cond_3

    .line 178
    :try_start_4
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V

    .line 179
    :cond_3
    invoke-static/range {p0 .. p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;

    move-result-object v1

    .line 180
    new-instance v11, Lio/olvid/engine/identity/databases/ContactGroupDetails;

    iget-object v7, v1, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    iget-object v8, v1, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    iget-object v9, v1, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    iget-object v12, v1, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lio/olvid/engine/identity/databases/ContactGroupDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;ILjava/lang/String;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 181
    invoke-virtual {v11}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->insert()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v11

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 173
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_4

    .line 177
    :try_start_6
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 167
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_5

    .line 178
    :try_start_9
    invoke-interface {v3}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v10
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;)Lio/olvid/engine/identity/databases/ContactGroupDetails;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 144
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getVersion()I

    move-result v6

    .line 149
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 150
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v1

    if-nez v1, :cond_1

    move-object v9, v0

    goto :goto_0

    :cond_1
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoServerLabel()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    move-object v9, v1

    .line 151
    :goto_0
    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object v1

    if-nez v1, :cond_2

    move-object v10, v0

    goto :goto_1

    :cond_2
    new-instance v1, Lio/olvid/engine/encoder/Encoded;

    invoke-virtual {p3}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->getPhotoServerKey()[B

    move-result-object p3

    invoke-direct {v1, p3}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p3

    check-cast p3, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-object v10, p3

    .line 152
    :goto_1
    new-instance p3, Lio/olvid/engine/identity/databases/ContactGroupDetails;

    const/4 v8, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v10}, Lio/olvid/engine/identity/databases/ContactGroupDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;ILjava/lang/String;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 153
    invoke-virtual {p3}, Lio/olvid/engine/identity/databases/ContactGroupDetails;->insert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 156
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

    .line 237
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS contact_group_details (group_owner_and_uid BLOB NOT NULL, owned_identity BLOB NOT NULL, version INT NOT NULL, serialized_json_details TEXT NOT NULL, photo_url TEXT, photo_server_label BLOB, photo_server_key BLOB,  CONSTRAINT PK_contact_group_details PRIMARY KEY(group_owner_and_uid, owned_identity, version));"

    .line 238
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 247
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 237
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 247
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;[BLio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/ContactGroupDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM contact_group_details WHERE group_owner_and_uid = ? AND owned_identity = ? AND version = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 292
    :try_start_0
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 293
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x3

    .line 294
    invoke-interface {v1, p1, p3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 295
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 296
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 297
    new-instance p2, Lio/olvid/engine/identity/databases/ContactGroupDetails;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/ContactGroupDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 301
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 302
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 301
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 302
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 295
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 301
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

    .line 288
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 302
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

    .line 269
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM contact_group_details WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 273
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 274
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 275
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 276
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 269
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 277
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

.method public getJsonGroupDetails()Lio/olvid/engine/engine/types/JsonGroupDetails;
    .locals 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    const-class v2, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/engine/engine/types/JsonGroupDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJsonGroupDetailsWithVersionAndPhoto()Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;
    .locals 4

    .line 59
    :try_start_0
    new-instance v0, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;-><init>()V

    .line 60
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    const-class v3, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonGroupDetails;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setGroupDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V

    .line 61
    iget v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setVersion(I)V

    .line 62
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setPhotoUrl(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setPhotoServerLabel([B)V

    .line 65
    iget-object v1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v1}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonGroupDetailsWithVersionAndPhoto;->setPhotoServerKey([B)V
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
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedJsonDetails()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 42
    iget v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    return v0
.end method

.method public insert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO contact_group_details VALUES (?,?,?,?,?, ?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 256
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 257
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 258
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 259
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x5

    .line 260
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x6

    .line 261
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x7

    .line 262
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    :goto_1
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 263
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 264
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 255
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 264
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

.method public setJsonDetails(Lio/olvid/engine/engine/types/JsonGroupDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group_details SET serialized_json_details = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 96
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 97
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 98
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 99
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 100
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 101
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->serializedJsonDetails:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 102
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

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public setPhotoServerLabelAndKey(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group_details SET photo_server_label = ?, photo_server_key = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 127
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 128
    invoke-static {p2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 129
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 130
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 131
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 132
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 133
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 134
    iput-object p2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 135
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
    throw p2
.end method

.method public setPhotoUrl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE contact_group_details SET photo_url = ?  WHERE group_owner_and_uid = ?  AND owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 111
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 112
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->groupOwnerAndUid:[B

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 113
    iget-object v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 114
    iget v2, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 115
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 116
    iput-object p1, p0, Lio/olvid/engine/identity/databases/ContactGroupDetails;->photoUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 117
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
