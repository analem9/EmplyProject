.class public Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;
.super Ljava/lang/Object;
.source "OwnedEphemeralIdentity.java"

# interfaces
.implements Lio/olvid/engine/datatypes/ObvDatabase;


# static fields
.field static final ASSOCIATED_OWNED_IDENTITY:Ljava/lang/String; = "associated_owned_identity"

.field static final DEVICE_UID:Ljava/lang/String; = "device_uid"

.field private static HOOK_BIT_INSERTED:J = 0x1L

.field static final IDENTITY:Ljava/lang/String; = "identity"

.field static final PRIVATE_IDENTITY:Ljava/lang/String; = "private_identity"

.field static final PROTOCOL_INSTANCE_UID:Ljava/lang/String; = "protocol_instance_uid"

.field static final TABLE_NAME:Ljava/lang/String; = "owned_ephemeral_identity"


# instance fields
.field private associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

.field private commitHookBits:J

.field private deviceUid:Lio/olvid/engine/datatypes/UID;

.field private identity:Lio/olvid/engine/datatypes/Identity;

.field private final identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

.field private privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

.field private protocolInstanceUid:Lio/olvid/engine/datatypes/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/PrivateIdentity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    .line 84
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    .line 85
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/PrivateIdentity;->getPublicIdentity()Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    .line 86
    iput-object p2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    .line 87
    iput-object p3, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 88
    iput-object p4, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->deviceUid:Lio/olvid/engine/datatypes/UID;

    .line 89
    iput-object p5, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-void
.end method

.method private constructor <init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    .line 93
    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    :try_start_0
    const-string p1, "identity"

    .line 95
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identity:Lio/olvid/engine/datatypes/Identity;
    :try_end_0
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "private_identity"

    .line 99
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/PrivateIdentity;->deserialize([B)Lio/olvid/engine/datatypes/PrivateIdentity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    .line 100
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "protocol_instance_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    .line 101
    new-instance p1, Lio/olvid/engine/datatypes/UID;

    const-string v0, "device_uid"

    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/engine/datatypes/UID;-><init>([B)V

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->deviceUid:Lio/olvid/engine/datatypes/UID;

    :try_start_1
    const-string p1, "associated_owned_identity"

    .line 103
    invoke-interface {p2, p1}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lio/olvid/engine/datatypes/Identity;->of([B)Lio/olvid/engine/datatypes/Identity;

    move-result-object p1

    iput-object p1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;
    :try_end_1
    .catch Lio/olvid/engine/encoder/DecodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 105
    :catch_0
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1

    .line 97
    :catch_1
    new-instance p1, Ljava/sql/SQLException;

    invoke-direct {p1}, Ljava/sql/SQLException;-><init>()V

    throw p1
.end method

.method public static create(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getServerAuthenticationPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;->getAlgorithmImplementation()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2, p3}, Lio/olvid/engine/crypto/Suite;->generateServerAuthenticationKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getEncryptionPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;->getAlgorithmImplementation()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3, p3}, Lio/olvid/engine/crypto/Suite;->generateEncryptionKeyPair(Ljava/lang/Byte;Lio/olvid/engine/crypto/PRNGService;)Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;

    move-result-object v3

    const/4 v4, 0x0

    .line 70
    invoke-static {v4}, Lio/olvid/engine/crypto/Suite;->getDefaultMAC(I)Lio/olvid/engine/crypto/MAC;

    move-result-object v4

    invoke-interface {v4, p3}, Lio/olvid/engine/crypto/MAC;->generateKey(Lio/olvid/engine/crypto/PRNG;)Lio/olvid/engine/datatypes/key/symmetric/MACKey;

    move-result-object v4

    .line 72
    :try_start_0
    new-instance v5, Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {p2}, Lio/olvid/engine/datatypes/Identity;->getServer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v7

    check-cast v7, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPublicKey()Lio/olvid/engine/datatypes/key/asymmetric/PublicKey;

    move-result-object v8

    check-cast v8, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;

    invoke-direct {v5, v6, v7, v8}, Lio/olvid/engine/datatypes/Identity;-><init>(Ljava/lang/String;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPublicKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPublicKey;)V

    .line 73
    new-instance v6, Lio/olvid/engine/datatypes/PrivateIdentity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v2

    check-cast v2, Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;

    invoke-virtual {v3}, Lio/olvid/engine/datatypes/key/asymmetric/KeyPair;->getPrivateKey()Lio/olvid/engine/datatypes/key/asymmetric/PrivateKey;

    move-result-object v3

    check-cast v3, Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;

    invoke-direct {v6, v5, v2, v3, v4}, Lio/olvid/engine/datatypes/PrivateIdentity;-><init>(Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/key/asymmetric/ServerAuthenticationPrivateKey;Lio/olvid/engine/datatypes/key/asymmetric/EncryptionPrivateKey;Lio/olvid/engine/datatypes/key/symmetric/MACKey;)V

    .line 74
    new-instance v7, Lio/olvid/engine/datatypes/UID;

    invoke-direct {v7, p3}, Lio/olvid/engine/datatypes/UID;-><init>(Lio/olvid/engine/crypto/PRNG;)V

    .line 75
    new-instance v0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    move-object v2, v0

    move-object v3, p0

    move-object v4, v6

    move-object v5, p1

    move-object v6, v7

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/PrivateIdentity;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)V

    .line 76
    invoke-virtual {v0}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->insert()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static createTable(Lio/olvid/engine/datatypes/Session;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lio/olvid/engine/datatypes/Session;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS owned_ephemeral_identity (identity BLOB PRIMARY KEY, private_identity BLOB NOT NULL, protocol_instance_uid BLOB NOT NULL, device_uid BLOB NOT NULL, associated_owned_identity BLOB NOT NULL, FOREIGN KEY (associated_owned_identity) REFERENCES owned_identity(identity) ON DELETE CASCADE);"

    .line 116
    invoke-interface {p0, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 123
    invoke-interface {p0}, Ljava/sql/Statement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_1

    .line 123
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

.method public static deleteAll(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/UID;)[Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "SELECT * FROM owned_ephemeral_identity WHERE protocol_instance_uid = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 175
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 176
    :try_start_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 177
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    new-instance v4, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    invoke-direct {v4, p0, v1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    .line 180
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_1

    .line 181
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :cond_1
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 184
    :cond_2
    iget-object p0, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v0, "DELETE FROM owned_ephemeral_identity WHERE protocol_instance_uid = ?;"

    invoke-virtual {p0, v0}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    .line 185
    :try_start_3
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 186
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 187
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V

    :cond_3
    return-object v3

    :catchall_0
    move-exception p1

    .line 184
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    .line 187
    :try_start_5
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0

    :catchall_3
    move-exception p0

    .line 175
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_5

    .line 181
    :try_start_7
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p0

    .line 173
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception p1

    if-eqz v0, :cond_6

    .line 182
    :try_start_a
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_3

    :catchall_8
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p1
.end method

.method public static get(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 158
    :cond_0
    iget-object v1, p0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v2, "SELECT * FROM owned_ephemeral_identity WHERE identity = ?;"

    invoke-virtual {v1, v2}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    const/4 v2, 0x1

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 160
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 161
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    new-instance v0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;

    invoke-direct {v0, p0, p1}, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;-><init>(Lio/olvid/engine/identity/datatypes/IdentityManagerSession;Ljava/sql/ResultSet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 166
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    if-eqz v1, :cond_2

    .line 167
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_2
    return-object v0

    :cond_3
    if-eqz p1, :cond_4

    .line 166
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 167
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p0

    .line 160
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_6

    .line 166
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

    .line 158
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz v1, :cond_7

    .line 167
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

    .line 145
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "DELETE FROM owned_ephemeral_identity WHERE identity = ?;"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 146
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 147
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 145
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 148
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

.method public getAssociatedOwnedIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getDeviceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->deviceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public getIdentity()Lio/olvid/engine/datatypes/Identity;
    .locals 1

    .line 44
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    return-object v0
.end method

.method public getPrivateIdentity()Lio/olvid/engine/datatypes/PrivateIdentity;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    return-object v0
.end method

.method public getProtocolInstanceUid()Lio/olvid/engine/datatypes/UID;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    return-object v0
.end method

.method public insert()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    const-string v1, "INSERT INTO owned_ephemeral_identity VALUES (?,?,?,?,?);"

    invoke-virtual {v0, v1}, Lio/olvid/engine/datatypes/Session;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    :try_start_0
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x2

    .line 133
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->privateIdentity:Lio/olvid/engine/datatypes/PrivateIdentity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/PrivateIdentity;->serialize()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x3

    .line 134
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->protocolInstanceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x4

    .line 135
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->deviceUid:Lio/olvid/engine/datatypes/UID;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/UID;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    const/4 v1, 0x5

    .line 136
    iget-object v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->associatedOwnedIdentity:Lio/olvid/engine/datatypes/Identity;

    invoke-virtual {v2}, Lio/olvid/engine/datatypes/Identity;->getBytes()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 137
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    .line 138
    iget-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    sget-wide v3, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->HOOK_BIT_INSERTED:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    .line 139
    iget-object v1, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v1, v1, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->session:Lio/olvid/engine/datatypes/Session;

    invoke-virtual {v1, p0}, Lio/olvid/engine/datatypes/Session;->addSessionCommitListener(Lio/olvid/engine/datatypes/ObvDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 131
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 140
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

.method public wasCommitted()V
    .locals 5

    .line 198
    iget-wide v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    sget-wide v2, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->HOOK_BIT_INSERTED:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 199
    iget-object v0, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->identityManagerSession:Lio/olvid/engine/identity/datatypes/IdentityManagerSession;

    iget-object v0, v0, Lio/olvid/engine/identity/datatypes/IdentityManagerSession;->ephemeralIdentityCreationDelegate:Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;

    invoke-interface {v0, p0}, Lio/olvid/engine/identity/datatypes/EphemeralIdentityCreationDelegate;->ephemeralIdentityCreated(Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;)V

    .line 201
    :cond_0
    iput-wide v2, p0, Lio/olvid/engine/identity/databases/OwnedEphemeralIdentity;->commitHookBits:J

    return-void
.end method
