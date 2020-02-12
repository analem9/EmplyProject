.class public Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
.super Ljava/lang/Object;
.source "OwnedIdentityDetails.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final OWNED_IDENTITY:Ljava/lang/String; = "owned_identity"

.field static final PHOTO_SERVER_KEY:Ljava/lang/String; = "photo_server_key"

.field static final PHOTO_SERVER_LABEL:Ljava/lang/String; = "photo_server_label"

.field static final PHOTO_URL:Ljava/lang/String; = "photo_url"

.field static final SERIALIZED_JSON_DETAILS:Ljava/lang/String; = "serialized_json_details"

.field static final TABLE_NAME:Ljava/lang/String; = "owned_identity_details"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private ownedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

.field private photoServerLabel:Lio/olvid/engine/datatypes/UID;

.field private photoUrl:Ljava/lang/String;

.field private serializedJsonDetails:Ljava/lang/String;

.field private version:I


# direct methods
.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 148
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 149
    iput p3, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    .line 150
    iput-object p4, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 153
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 138
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 139
    iput p3, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    .line 140
    iput-object p4, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    .line 141
    iput-object p5, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    .line 142
    iput-object p6, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 143
    iput-object p7, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "owned_identity"

    .line 159
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "version"

    .line 163
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    const-string p1, "serialized_json_details"

    .line 164
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const-string p1, "photo_url"

    .line 165
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    const-string p1, "photo_server_label"

    .line 166
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 168
    iput-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    goto :goto_0

    .line 170
    :cond_0
    new-instance v1, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v1, p1}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    :goto_0
    const-string p1, "photo_server_key"

    .line 172
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_1

    .line 174
    iput-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    goto :goto_1

    .line 177
    :cond_1
    :try_start_1
    new-instance p2, Lio/olvid/engine/encoder/Encoded;

    invoke-direct {p2, p1}, Lio/olvid/engine/encoder/Encoded;-><init>([B)V

    invoke-virtual {p2}, Lio/olvid/engine/encoder/Encoded;->decodeSymmetricKey()Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;

    move-result-object p1

    check-cast p1, Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lio/olvid/engine/encoder/DecodingException;->printStackTrace()V

    .line 180
    iput-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    :goto_1
    return-void

    .line 161
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    .line 114
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v3, "SELECT * FROM owned_identity_details WHERE owned_identity = ?  ORDER BY version DESC LIMIT 1;"

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 118
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 119
    :try_start_2
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "version"

    .line 120
    invoke-interface {v3, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v1, v4

    :cond_1
    move v7, v1

    if-eqz v3, :cond_2

    .line 122
    :try_start_3
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v2, :cond_3

    .line 123
    :try_start_4
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 124
    :cond_3
    invoke-static {p0, p1, p2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p2

    .line 125
    new-instance v1, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    iget-object v8, p2, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    iget-object v9, p2, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    iget-object v10, p2, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    iget-object v11, p2, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v11}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    .line 126
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->insert()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 118
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_4

    .line 122
    :try_start_6
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 114
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v2, :cond_5

    .line 123
    :try_start_9
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM owned_identity_details WHERE owned_identity = ?  ORDER BY version DESC LIMIT 1;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 94
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 95
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "version"

    .line 96
    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v3, v4

    :cond_1
    if-eqz v2, :cond_2

    .line 98
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    if-eqz v1, :cond_3

    .line 99
    :try_start_4
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    .line 100
    :cond_3
    new-instance v1, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    invoke-direct {v1, p0, p1, v3, p2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;ILjava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->insert()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 94
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_4

    .line 98
    :try_start_6
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 90
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 99
    :try_start_9
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p2

    :try_start_a
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :cond_6
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

    .line 190
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS owned_identity_details (owned_identity BLOB NOT NULL, version INT NOT NULL, serialized_json_details TEXT NOT NULL, photo_url TEXT, photo_server_label BLOB, photo_server_key BLOB, CONSTRAINT PK_owned_identity_details PRIMARY KEY(owned_identity, version));"

    .line 191
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 190
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 199
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 237
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM owned_identity_details WHERE owned_identity = ? AND version = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 240
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 p1, 0x2

    .line 241
    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 242
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 243
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 244
    new-instance p2, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    invoke-direct {p2, p0, p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 248
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p1, :cond_4

    .line 248
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 249
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 242
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_6

    .line 248
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

    .line 237
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 249
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

    .line 220
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM owned_identity_details WHERE owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 224
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 225
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 220
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 226
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

    .line 48
    :try_start_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

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

    .line 56
    :try_start_0
    new-instance v0, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;

    invoke-direct {v0}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;-><init>()V

    .line 57
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    const-class v3, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/engine/types/JsonIdentityDetails;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setIdentityDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    .line 58
    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setVersion(I)V

    .line 59
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setPhotoUrl(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/olvid/engine/engine/types/JsonIdentityDetailsWithVersionAndPhoto;->setPhotoServerLabel([B)V

    .line 62
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

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

    .line 79
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    return-object v0
.end method

.method public getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedJsonDetails()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 39
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    return v0
.end method

.method public insert()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO owned_identity_details VALUES (?,?,?,?,?, ?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 209
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x3

    .line 210
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 211
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x5

    .line 212
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x6

    .line 213
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    invoke-static {v2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v3

    :goto_1
    invoke-interface {v0, v1, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 214
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 215
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 207
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 215
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

.method public setJsonDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 260
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE owned_identity_details SET serialized_json_details = ?  WHERE owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 265
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 266
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 267
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 268
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 269
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->serializedJsonDetails:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 261
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 270
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

    .line 258
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

    .line 289
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE owned_identity_details SET photo_server_label = ?, photo_server_key = ?  WHERE owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 294
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 295
    invoke-static {p2}, Lio/olvid/engine/encoder/Encoded;->of(Lio/olvid/engine/datatypes/key/symmetric/SymmetricKey;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 296
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 297
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 298
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 299
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerLabel:Lio/olvid/engine/datatypes/UID;

    .line 300
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_1

    .line 301
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

    .line 274
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE owned_identity_details SET photo_url = ?, photo_server_key = NULL  WHERE owned_identity = ?  AND version = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 279
    :try_start_0
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 280
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->ownedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 281
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->version:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 282
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 283
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 284
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->photoServerKey:Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 274
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 285
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
