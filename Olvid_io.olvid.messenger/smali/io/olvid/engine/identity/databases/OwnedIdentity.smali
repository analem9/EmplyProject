.class public Lio/olvid/engine/identity/databases/OwnedIdentity;
.super Ljava/lang/Object;
.source "OwnedIdentity.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final API_KEY:Ljava/lang/String; = "api_key"

.field private static HOOK_BIT_IDENTITY_DETAILS_PUBLISHED:J = 0x2L

.field private static HOOK_BIT_IDENTITY_DETAILS_PUBLISHED_PHOTO_CHANGED:J = 0x4L

.field private static HOOK_BIT_IDENTITY_LIST_CHANGED:J = 0x1L

.field private static HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J = 0x8L

.field static final LATEST_DETAILS_VERSION:Ljava/lang/String; = "latest_details_version"

.field static final OWNED_IDENTITY:Ljava/lang/String; = "identity"

.field static final PRIVATE_IDENTITY:Ljava/lang/String; = "private_identity"

.field static final PUBLISHED_DETAILS_VERSION:Ljava/lang/String; = "published_details_version"

.field static final SINGLE_USE:Ljava/lang/String; = "single_use"

.field static final TABLE_NAME:Ljava/lang/String; = "owned_identity"


# instance fields
.field private apiKey:Ljava/util/UUID;

.field private commitHookBits:J

.field private identity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private latestDetailsVersion:I

.field private privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

.field private publishedDetailsVersion:I

.field private singleUse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/PrivateIdentity;IZLjava/util/UUID;)V
    .locals 2

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 499
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 309
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 310
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/PrivateIdentity;->getPublicIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 311
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    .line 312
    iput p3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    .line 313
    iput p3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    .line 314
    iput-boolean p4, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->singleUse:Z

    .line 315
    iput-object p5, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->apiKey:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 499
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 319
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "identity"

    .line 321
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "private_identity"

    .line 325
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/PrivateIdentity;->deserialize([B)Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    const-string p1, "published_details_version"

    .line 326
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    const-string p1, "latest_details_version"

    .line 327
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    const-string p1, "single_use"

    .line 328
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->singleUse:Z

    const-string p1, "api_key"

    .line 329
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->apiKey:Ljava/util/UUID;

    return-void

    .line 323
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/lang/String;Ljava/lang/Byte;Ljava/lang/Byte;Lio/olvid/engine/engine/types/JsonIdentityDetails;ZLjava/util/UUID;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedIdentity;
    .locals 11

    move-object v6, p0

    move-object v0, p4

    move-object/from16 v7, p7

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p4}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 292
    invoke-static {p2, v7}, Lio/olvid/engine/crypto/Suite;->generateServerAuthenticationKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v1

    move-object v2, p3

    .line 293
    invoke-static {p3, v7}, Lio/olvid/engine/crypto/Suite;->generateEncryptionKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v2

    const/4 v3, 0x0

    .line 294
    invoke-static {v3}, Lio/olvid/engine/crypto/Suite;->getDefaultMAC(I)Lio/olvid/engine/crypto/MAC;

    move-result-object v3

    invoke-interface {v3, v7}, Lio/olvid/engine/crypto/MAC;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    move-result-object v3

    .line 296
    :try_start_0
    new-instance v9, Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v4

    check-cast v4, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v5

    check-cast v5, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-object v10, p1

    invoke-direct {v9, p1, v4, v5}, Lio/olvid/engine/datatypes/Identity;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;)V

    .line 297
    new-instance v4, Lio/olvid/engine/datatypes/PrivateIdentity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v1

    check-cast v1, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    invoke-direct {v4, v9, v1, v2, v3}, Lio/olvid/engine/datatypes/PrivateIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/key/symmetric/MACKey;)V

    .line 298
    iget-object v1, v6, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->jsonObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v9, v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Ljava/lang/String;)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    .line 299
    new-instance v10, Lio/olvid/engine/identity/databases/OwnedIdentity;

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getVersion()I

    move-result v3

    move-object v0, v10

    move-object v1, p0

    move-object v2, v4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lio/olvid/engine/identity/databases/OwnedIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/PrivateIdentity;IZLjava/util/UUID;)V

    .line 300
    invoke-virtual {v10}, Lio/olvid/engine/identity/databases/OwnedIdentity;->insert()V

    .line 301
    invoke-static {p0, v9, v7}, Lio/olvid/engine/identity/databases/OwnedDevice;->createCurrentDevice(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    :cond_1
    :goto_0
    return-object v8
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS owned_identity (identity BLOB PRIMARY KEY, private_identity BLOB NOT NULL, published_details_version INT NOT NULL, latest_details_version INT NOT NULL, single_use BIT NOT NULL, api_key VARCHAR NOT NULL, FOREIGN KEY (identity, published_details_version) REFERENCES owned_identity_details(owned_identity, version), FOREIGN KEY (identity, latest_details_version) REFERENCES owned_identity_details(owned_identity, version));"

    .line 339
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 348
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 338
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 348
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

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 451
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM owned_identity WHERE identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 452
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 453
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 454
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 455
    new-instance v0, Lio/olvid/engine/identity/databases/OwnedIdentity;

    invoke-direct {v0, p0, p1}, Lio/olvid/engine/identity/databases/OwnedIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 459
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 460
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 459
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 460
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 453
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 459
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
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    .line 451
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 460
    :try_start_8
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;)[Lio/olvid/engine/identity/databases/OwnedIdentity;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM owned_identity;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 465
    :try_start_0
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 466
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 467
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    new-instance v3, Lio/olvid/engine/identity/databases/OwnedIdentity;

    invoke-direct {v3, p0, v1}, Lio/olvid/engine/identity/databases/OwnedIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lio/olvid/engine/identity/databases/OwnedIdentity;

    .line 470
    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/olvid/engine/identity/databases/OwnedIdentity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 471
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v0, :cond_2

    .line 472
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 465
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 471
    :try_start_4
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    .line 464
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_4

    .line 472
    :try_start_7
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method public static getSerializedPublishedDetails(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 476
    :try_start_0
    iget-object p0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT details.serialized_json_details FROM owned_identity AS identity  INNER JOIN owned_identity_details AS details  ON identity.identity = details.owned_identity AND identity.published_details_version = details.version WHERE identity.identity = ?;"

    invoke-virtual {p0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :try_start_1
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p0, v1, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 484
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 485
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 486
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    .line 489
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_0
    if-eqz p0, :cond_1

    .line 490
    :try_start_4
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-object v1

    :cond_2
    if-eqz p1, :cond_3

    .line 489
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_3
    if-eqz p0, :cond_4

    .line 490
    :try_start_6
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception v1

    .line 484
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_5

    .line 489
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    .line 476
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz p0, :cond_6

    .line 490
    :try_start_b
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw v1
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    return-object v0
.end method

.method public static upgradeTable(Lio/olvid/engine/datatypes/Session;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x5

    if-ge p1, v0, :cond_8

    if-lt p2, v0, :cond_8

    .line 353
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    :try_start_0
    const-string p2, "ALTER TABLE owned_identity RENAME TO old_owned_identities"

    .line 354
    invoke-interface {p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p2, "CREATE TABLE IF NOT EXISTS owned_identity_details ( owned_identity BLOB NOT NULL,  version INT NOT NULL,  serialized_json_details TEXT NOT NULL,  photo_url TEXT,  photo_server_label BLOB,  photo_server_key BLOB,  CONSTRAINT PK_owned_identity_details PRIMARY KEY(owned_identity, version));"

    .line 355
    invoke-interface {p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string p2, "CREATE TABLE IF NOT EXISTS owned_identity ( identity BLOB PRIMARY KEY,  private_identity BLOB NOT NULL,  published_details_version INT NOT NULL,  latest_details_version INT NOT NULL,  single_use BIT NOT NULL,  api_key VARCHAR NOT NULL,  FOREIGN KEY (identity, published_details_version) REFERENCES owned_identity_details(owned_identity, version), FOREIGN KEY (identity, latest_details_version) REFERENCES owned_identity_details(owned_identity, version));"

    .line 363
    invoke-interface {p1, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 372
    new-instance p2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    const-string v1, "SELECT * FROM old_owned_identities"

    .line 373
    invoke-interface {p1, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 374
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "INSERT INTO owned_identity VALUES (?,?,?,?,?, ?);"

    .line 375
    invoke-virtual {p0, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v3, 0x1

    .line 376
    :try_start_2
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v4, 0x2

    .line 377
    invoke-interface {v1, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v5, 0x3

    .line 378
    invoke-interface {v2, v5, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v6, 0x4

    .line 379
    invoke-interface {v2, v6, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 380
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v7

    invoke-interface {v2, v0, v7}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 381
    invoke-interface {v1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v2, v8, v7}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 382
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_1

    .line 383
    :try_start_3
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    const-string v2, "INSERT INTO owned_identity_details VALUES (?,?,?,?,?, ?);"

    .line 384
    invoke-virtual {p0, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 385
    :try_start_4
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 386
    invoke-interface {v2, v4, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 387
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "first_name"

    .line 388
    invoke-interface {v1, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    :try_start_5
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    .line 396
    :try_start_6
    invoke-interface {v2, v6, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 397
    invoke-interface {v2, v0, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 398
    invoke-interface {v2, v8, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 399
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    .line 400
    :goto_1
    :try_start_7
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_0

    :catch_0
    move-exception v3

    .line 392
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 384
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v2, :cond_2

    .line 400
    :try_start_a
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_3
    move-exception p0

    .line 375
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz v2, :cond_3

    .line 383
    :try_start_d
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_4
    if-eqz v1, :cond_5

    .line 402
    :try_start_f
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_5
    const-string p0, "DROP TABLE old_owned_identities"

    .line 403
    invoke-interface {p1, p0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-eqz p1, :cond_8

    .line 404
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    goto :goto_6

    :catchall_6
    move-exception p0

    .line 373
    :try_start_10
    throw p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception p2

    if-eqz v1, :cond_6

    .line 402
    :try_start_11
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v0

    :try_start_12
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception p0

    .line 353
    :try_start_13
    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception p2

    if-eqz p1, :cond_7

    .line 404
    :try_start_14
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw p2

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0}, Lio/olvid/engine/datatypes/Session;->isInTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM owned_identity WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 432
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 433
    iget-wide v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v5, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_LIST_CHANGED:J

    or-long/2addr v3, v5

    iput-wide v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 434
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 436
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM owned_identity_details WHERE owned_identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 438
    :try_start_1
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 439
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 436
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 440
    :try_start_3
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :catchall_3
    move-exception v1

    .line 430
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v0, :cond_3

    .line 435
    :try_start_5
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    :cond_4
    const-string v0, "Running OwnedIdentity delete outside a transaction"

    .line 427
    invoke-static {v0}, Lio/olvid/engine/Logger;->e(Ljava/lang/String;)V

    .line 428
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0}, Ljava/sql/SQLException;-><init>()V

    throw v0
.end method

.method public discardLatestDetails()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 258
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE owned_identity SET latest_details_version = ?  WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 264
    :try_start_0
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x2

    .line 265
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 266
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 267
    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    iput v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    .line 268
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 269
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 261
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 270
    :try_start_2
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public getAllDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/identity/databases/OwnedDevice;->getAllDevicesOfIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object v0

    .line 115
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/datatypes/UID;

    const/4 v2, 0x0

    .line 116
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 117
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/identity/databases/OwnedDevice;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getApiKey()Ljava/util/UUID;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->apiKey:Ljava/util/UUID;

    return-object v0
.end method

.method public getContactIdentities()[Lio/olvid/engine/identity/databases/ContactIdentity;
    .locals 2

    .line 101
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/identity/databases/ContactIdentity;->getAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/ContactIdentity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/identity/databases/OwnedDevice;->getCurrentDeviceOfOwnedIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedDevice;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p2

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getLatestDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p2

    .line 76
    :goto_0
    invoke-virtual {p2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->getFullDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getLatestDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    invoke-static {v0, v1, v2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    return-object v0
.end method

.method public getLatestDetailsVersion()I
    .locals 1

    .line 95
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    return v0
.end method

.method public getOtherDeviceUids()[Lio/olvid/engine/datatypes/UID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1}, Lio/olvid/engine/identity/databases/OwnedDevice;->getOtherDevicesOfOwnedIdentity(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)[Lio/olvid/engine/identity/databases/OwnedDevice;

    move-result-object v0

    .line 106
    array-length v1, v0

    new-array v1, v1, [Lio/olvid/engine/datatypes/UID;

    const/4 v2, 0x0

    .line 107
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 108
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lio/olvid/engine/identity/databases/OwnedDevice;->getUid()Lio/olvid/engine/datatypes/UID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    return-object v0
.end method

.method public getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    invoke-static {v0, v1, v2}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedDetailsVersion()I
    .locals 1

    .line 91
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    return v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO owned_identity VALUES (?,?,?,?,?, ?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 412
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 413
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PrivateIdentity;->serialize()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 414
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x4

    .line 415
    iget v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v1, 0x5

    .line 416
    iget-boolean v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->singleUse:Z

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    const/4 v1, 0x6

    .line 417
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->apiKey:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 418
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 419
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_LIST_CHANGED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 420
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 411
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 421
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

.method public isSingleUse()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->singleUse:Z

    return v0
.end method

.method public publishLatestDetails()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getLatestDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, v2, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v3, "UPDATE owned_identity SET published_details_version = ?  WHERE identity = ?;"

    invoke-virtual {v2, v3}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const/4 v3, 0x1

    .line 242
    :try_start_0
    iget v4, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v3, 0x2

    .line 243
    iget-object v4, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v4}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 244
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 245
    iget v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    iput v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    .line 246
    iget-wide v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v5, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J

    or-long/2addr v3, v5

    iput-wide v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 247
    iget-object v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v3, v3, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v3, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 249
    :cond_1
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoServerLabel()Lio/olvid/engine/datatypes/UID;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getPhotoServerKey()Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;

    move-result-object v0

    if-nez v0, :cond_4

    .line 250
    :cond_3
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_DETAILS_PUBLISHED_PHOTO_CHANGED:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 252
    :cond_4
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_DETAILS_PUBLISHED:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 253
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v0, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V

    .line 254
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    return v0

    :catchall_0
    move-exception v0

    .line 239
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v2, :cond_5

    .line 248
    :try_start_2
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v1
.end method

.method public setApiKey(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "UPDATE owned_identity SET api_key = ?  WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    :try_start_0
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 278
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 279
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 280
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->apiKey:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 281
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

    .line 281
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

.method public setLatestDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 142
    invoke-virtual {p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 145
    :cond_0
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getLatestDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    if-eq v0, v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->getPublishedDetails()Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getJsonIdentityDetails()Lio/olvid/engine/engine/types/JsonIdentityDetails;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p1}, Lio/olvid/engine/engine/types/JsonIdentityDetails;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lio/olvid/engine/identity/databases/OwnedIdentity;->discardLatestDetails()V

    return-void

    .line 160
    :cond_2
    iget v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    if-ne v0, v1, :cond_4

    .line 161
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE owned_identity SET latest_details_version = ?  WHERE identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 165
    :try_start_0
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getVersion()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x2

    .line 166
    iget-object v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 167
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 168
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getVersion()I

    move-result v2

    iput v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    .line 169
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 170
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, v2, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 171
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 162
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 171
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0

    .line 173
    :cond_4
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v2, v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object v0

    .line 175
    :cond_5
    :goto_1
    invoke-virtual {v0, p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->setJsonDetails(Lio/olvid/engine/engine/types/JsonIdentityDetails;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 187
    :cond_1
    iget p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    if-ne p1, v1, :cond_3

    .line 188
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v1, v2, p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->copy(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    .line 189
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "UPDATE owned_identity SET latest_details_version = ?  WHERE identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 192
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getVersion()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 v2, 0x2

    .line 193
    iget-object v3, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 194
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 195
    invoke-virtual {p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->getVersion()I

    move-result v2

    iput v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    .line 196
    iget-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    .line 197
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, v2, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v2, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 198
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 198
    :try_start_2
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0

    .line 200
    :cond_3
    iget-object p1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {p1, v2, v1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    .line 204
    :cond_4
    :goto_1
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lio/olvid/engine/Logger;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 208
    :cond_5
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v4, v4, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->identityPhotosPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 212
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 213
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/16 v2, 0x1000

    :try_start_4
    new-array v2, v2, [B

    .line 216
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v5, 0x0

    .line 217
    invoke-virtual {v0, v2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 219
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 220
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->setPhotoUrl(Ljava/lang/String;)V

    return-void

    :catchall_3
    move-exception p1

    .line 213
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    .line 219
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    .line 212
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    .line 220
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
.end method

.method public setPhotoLabelAndKey(ILio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-static {v0, v1, p1}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;I)Lio/olvid/engine/identity/databases/OwnedIdentityDetails;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1, p2, p3}, Lio/olvid/engine/identity/databases/OwnedIdentityDetails;->setPhotoServerLabelAndKey(Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/key/symmetric/AuthEncKey;)V

    :cond_0
    return-void
.end method

.method public wasCommitted()V
    .locals 7

    .line 507
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_LIST_CHANGED:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 508
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "identity_manager_notification_owned_identity_list_updated"

    invoke-interface {v0, v4, v1}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 510
    :cond_0
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v4, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_DETAILS_PUBLISHED:J

    and-long/2addr v0, v4

    const-string v4, "owned_identity"

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 512
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 513
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v5, "identity_manager_notification_owned_identity_published_details_updated"

    invoke-interface {v1, v5, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 515
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v0, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_IDENTITY_DETAILS_PUBLISHED_PHOTO_CHANGED:J

    .line 519
    :cond_1
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    sget-wide v5, Lio/olvid/engine/identity/databases/OwnedIdentity;->HOOK_BIT_LATEST_IDENTITY_DETAILS_VERSION_CHANGED:J

    and-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->latestDetailsVersion:I

    iget v4, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->publishedDetailsVersion:I

    if-eq v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "has_unpublished"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->notificationPostingDelegate:Lio/olvid/engine/metamanager/NotificationPostingDelegate;

    const-string v4, "identity_manager_notification_latest_owned_identity_details_updated"

    invoke-interface {v1, v4, v0}, Lio/olvid/engine/metamanager/NotificationPostingDelegate;->postNotification(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 525
    :cond_3
    iput-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedIdentity;->commitHookBits:J

    return-void
.end method
