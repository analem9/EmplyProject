.class public Lio/olvid/messenger/databases/entity/ContactGroupJoin;
.super Ljava/lang/Object;
.source "ContactGroupJoin.java"


# static fields
.field public static final BYTES_CONTACT_IDENTITY:Ljava/lang/String; = "bytes_contact_identity"

.field public static final BYTES_GROUP_OWNER_AND_UID:Ljava/lang/String; = "bytes_group_owner_and_uid"

.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final TABLE_NAME:Ljava/lang/String; = "contact_group_join"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field public final bytesContactIdentity:[B

.field public final bytesGroupUid:[B

.field public final bytesOwnedIdentity:[B

.field public final timestamp:J


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesGroupUid:[B

    .line 65
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesContactIdentity:[B

    .line 66
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesOwnedIdentity:[B

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->timestamp:J

    return-void
.end method

.method public constructor <init>([B[B[BJ)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesGroupUid:[B

    .line 57
    iput-object p3, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesContactIdentity:[B

    .line 58
    iput-object p2, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->bytesOwnedIdentity:[B

    .line 59
    iput-wide p4, p0, Lio/olvid/messenger/databases/entity/ContactGroupJoin;->timestamp:J

    return-void
.end method
