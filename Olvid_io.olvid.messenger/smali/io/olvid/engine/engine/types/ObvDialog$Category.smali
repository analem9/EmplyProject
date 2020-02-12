.class public Lio/olvid/engine/engine/types/ObvDialog$Category;
.super Ljava/lang/Object;
.source "ObvDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/engine/engine/types/ObvDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static final ACCEPT_GROUP_INVITE_DIALOG_CATEGORY:I = 0x8

.field public static final ACCEPT_INVITE_DIALOG_CATEGORY:I = 0x1

.field public static final ACCEPT_MEDIATOR_INVITE_DIALOG_CATEGORY:I = 0x6

.field public static final AUTO_CONFIRMED_CONTACT_INTRODUCTION_DIALOG_CATEGORY:I = 0xb

.field public static final GROUP_JOINED_DIALOG_CATEGORY:I = 0xc

.field public static final INCREASE_GROUP_OWNER_TRUST_LEVEL_DIALOG_CATEGORY:I = 0xa

.field public static final INCREASE_MEDIATOR_TRUST_LEVEL_DIALOG_CATEGORY:I = 0x9

.field public static final INVITE_ACCEPTED_DIALOG_CATEGORY:I = 0x5

.field public static final INVITE_SENT_DIALOG_CATEGORY:I = 0x0

.field public static final MEDIATOR_INVITE_ACCEPTED_DIALOG_CATEGORY:I = 0x7

.field public static final MUTUAL_TRUST_CONFIRMED_DIALOG_CATEGORY:I = 0x4

.field public static final SAS_CONFIRMED_DIALOG_CATEGORY:I = 0x3

.field public static final SAS_EXCHANGE_DIALOG_CATEGORY:I = 0x2


# instance fields
.field private final bytesContactIdentity:[B

.field private final bytesGroupUid:[B

.field private final bytesMediatorOrGroupOwnerIdentity:[B

.field private final contactDisplayNameOrSerializedDetails:Ljava/lang/String;

.field private final id:I

.field private final pendingGroupMemberIdentities:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

.field private final sasEntered:[B

.field private final sasToDisplay:[B

.field private final serializedGroupDetails:Ljava/lang/String;

.field public final serverTimestamp:Ljava/lang/Long;


# direct methods
.method private constructor <init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->id:I

    .line 146
    iput-object p2, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 147
    iput-object p3, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasToDisplay:[B

    .line 149
    iput-object p5, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasEntered:[B

    .line 150
    iput-object p6, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    .line 151
    iput-object p7, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serializedGroupDetails:Ljava/lang/String;

    .line 152
    iput-object p8, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    .line 153
    iput-object p9, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->pendingGroupMemberIdentities:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 154
    iput-object p10, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$000(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {p0, p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/olvid/engine/engine/types/ObvDialog$Category;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lio/olvid/engine/engine/types/ObvDialog$Category;->encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/olvid/engine/engine/types/ObvDialog$Category;)I
    .locals 0

    .line 117
    iget p0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->id:I

    return p0
.end method

.method public static createAcceptGroupInvite(Ljava/lang/String;[B[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;J)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 426
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createAcceptInvite([BLjava/lang/String;J)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 398
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createAcceptMediatorInvite([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 418
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createAutoConfirmedContactIntroduction([BLjava/lang/String;[B)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 438
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createGroupJoined(Ljava/lang/String;[B[B)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 442
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createIncreaseGroupOwnerTrustLevel(Ljava/lang/String;[B[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;J)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 434
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v11

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createIncreaseMediatorTrustLevel([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 430
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createInviteAccepted([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 414
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createInviteSent([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 394
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createMediatorInviteAccepted([BLjava/lang/String;[B)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 422
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createMutualTrustConfirmed([BLjava/lang/String;)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 410
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createSasConfirmed([BLjava/lang/String;[B[B)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 406
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method public static createSasExchange([BLjava/lang/String;[BJ)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 12

    .line 402
    new-instance v11, Lio/olvid/engine/engine/types/ObvDialog$Category;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v10}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v11
.end method

.method private encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;
    .locals 9

    .line 303
    iget v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->id:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :pswitch_0
    new-array p1, v2, [Lio/olvid/engine/encoder/Encoded;

    .line 379
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serializedGroupDetails:Ljava/lang/String;

    .line 380
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    .line 381
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    .line 382
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    .line 379
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto/16 :goto_1

    .line 360
    :pswitch_1
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->pendingGroupMemberIdentities:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    array-length v0, v0

    new-array v0, v0, [Lio/olvid/engine/encoder/Encoded;

    const/4 v6, 0x0

    .line 361
    :goto_0
    iget-object v7, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->pendingGroupMemberIdentities:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 363
    :try_start_0
    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->encode(Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v7

    aput-object v7, v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x5

    new-array p1, p1, [Lio/olvid/engine/encoder/Encoded;

    .line 369
    iget-object v6, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serializedGroupDetails:Ljava/lang/String;

    .line 370
    invoke-static {v6}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, p1, v5

    iget-object v6, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    .line 371
    invoke-static {v6}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, p1, v4

    iget-object v6, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    .line 372
    invoke-static {v6}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v6

    aput-object v6, p1, v3

    .line 373
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v1

    .line 369
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_2
    new-array p1, v2, [Lio/olvid/engine/encoder/Encoded;

    .line 351
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 352
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 353
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    .line 354
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    .line 351
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_3
    new-array p1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 341
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 342
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 343
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    .line 344
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v2

    .line 341
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_4
    new-array p1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 331
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 332
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 333
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasToDisplay:[B

    .line 334
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasEntered:[B

    .line 335
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v2

    .line 331
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    new-array p1, v1, [Lio/olvid/engine/encoder/Encoded;

    .line 322
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 323
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 324
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasToDisplay:[B

    .line 325
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    .line 326
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v2

    .line 322
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    new-array p1, v2, [Lio/olvid/engine/encoder/Encoded;

    .line 314
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 315
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 316
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serverTimestamp:Ljava/lang/Long;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v3

    .line 314
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    goto :goto_1

    :pswitch_7
    new-array p1, v3, [Lio/olvid/engine/encoder/Encoded;

    .line 307
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    .line 308
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([B)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v5

    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 309
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of(Ljava/lang/String;)Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    aput-object v0, p1, v4

    .line 307
    invoke-static {p1}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    :goto_1
    new-array v0, v3, [Lio/olvid/engine/encoder/Encoded;

    .line 387
    iget v1, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->id:I

    int-to-long v1, v1

    .line 388
    invoke-static {v1, v2}, Lio/olvid/engine/encoder/Encoded;->of(J)Lio/olvid/engine/encoder/Encoded;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p1, v0, v4

    .line 387
    invoke-static {v0}, Lio/olvid/engine/encoder/Encoded;->of([Lio/olvid/engine/encoder/Encoded;)Lio/olvid/engine/encoder/Encoded;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/ObvDialog$Category;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-virtual/range {p0 .. p0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    .line 199
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x0

    .line 202
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v3

    long-to-int v6, v3

    const/4 v3, 0x1

    .line 213
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 291
    :pswitch_0
    array-length v4, v0

    if-ne v4, v2, :cond_8

    .line 294
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 295
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    :goto_0
    move-object v12, v11

    :goto_1
    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_2
    move-object v7, v1

    goto/16 :goto_6

    .line 282
    :pswitch_1
    array-length v4, v0

    if-ne v4, v5, :cond_0

    .line 285
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v1

    .line 286
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v3

    .line 287
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    move-object v11, v0

    move-object v12, v1

    move-object v13, v3

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v14, v10

    move-object v15, v14

    goto/16 :goto_6

    .line 283
    :cond_0
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 258
    :pswitch_2
    array-length v8, v0

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    .line 261
    aget-object v8, v0, v1

    invoke-virtual {v8}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v8

    .line 262
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v3

    .line 263
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 264
    aget-object v5, v0, v5

    invoke-virtual {v5}, Lio/olvid/engine/encoder/Encoded;->decodeList()[Lio/olvid/engine/encoder/Encoded;

    move-result-object v5

    .line 265
    array-length v9, v5

    new-array v9, v9, [Lio/olvid/engine/engine/types/identities/ObvIdentity;

    .line 266
    :goto_3
    array-length v10, v5

    if-ge v1, v10, :cond_1

    .line 267
    aget-object v10, v5, v1

    move-object/from16 v11, p1

    invoke-static {v10, v11}, Lio/olvid/engine/engine/types/identities/ObvIdentity;->of(Lio/olvid/engine/encoder/Encoded;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lio/olvid/engine/engine/types/identities/ObvIdentity;

    move-result-object v10

    aput-object v10, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 269
    :cond_1
    aget-object v0, v0, v4

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v15, v0

    move-object v11, v2

    move-object v13, v3

    move-object v10, v7

    move-object v12, v8

    move-object v14, v9

    move-object v8, v10

    move-object v9, v8

    goto/16 :goto_6

    .line 259
    :cond_2
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 248
    :pswitch_3
    array-length v4, v0

    if-ne v4, v5, :cond_3

    .line 251
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 252
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    .line 253
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    move-object v11, v0

    move-object v8, v3

    move-object v9, v7

    move-object v10, v9

    move-object v12, v10

    goto/16 :goto_1

    .line 249
    :cond_3
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 237
    :pswitch_4
    array-length v8, v0

    if-ne v8, v4, :cond_4

    .line 240
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 241
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    .line 242
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 243
    aget-object v0, v0, v5

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v15, v0

    move-object v11, v2

    move-object v8, v3

    move-object v9, v7

    move-object v10, v9

    move-object v12, v10

    goto/16 :goto_5

    .line 238
    :cond_4
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 216
    :pswitch_5
    array-length v8, v0

    if-ne v8, v4, :cond_5

    .line 219
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 220
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    .line 221
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 222
    aget-object v0, v0, v5

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v0

    move-object v10, v0

    move-object v9, v2

    move-object v8, v3

    move-object v11, v7

    goto/16 :goto_0

    .line 217
    :cond_5
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 226
    :pswitch_6
    array-length v8, v0

    if-ne v8, v4, :cond_6

    .line 229
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 230
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    .line 231
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v2

    .line 232
    aget-object v0, v0, v5

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v15, v0

    move-object v9, v2

    move-object v8, v3

    move-object v10, v7

    goto :goto_4

    .line 227
    :cond_6
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 273
    :pswitch_7
    array-length v4, v0

    if-ne v4, v5, :cond_7

    .line 276
    aget-object v1, v0, v1

    invoke-virtual {v1}, Lio/olvid/engine/encoder/Encoded;->decodeBytes()[B

    move-result-object v1

    .line 277
    aget-object v3, v0, v3

    invoke-virtual {v3}, Lio/olvid/engine/encoder/Encoded;->decodeString()Ljava/lang/String;

    move-result-object v3

    .line 278
    aget-object v0, v0, v2

    invoke-virtual {v0}, Lio/olvid/engine/encoder/Encoded;->decodeLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v15, v0

    move-object v8, v3

    move-object v9, v7

    move-object v10, v9

    :goto_4
    move-object v11, v10

    move-object v12, v11

    :goto_5
    move-object v13, v12

    move-object v14, v13

    goto/16 :goto_2

    .line 274
    :cond_7
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 298
    :goto_6
    new-instance v0, Lio/olvid/engine/engine/types/ObvDialog$Category;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lio/olvid/engine/engine/types/ObvDialog$Category;-><init>(I[BLjava/lang/String;[B[B[BLjava/lang/String;[B[Lio/olvid/engine/engine/types/identities/ObvIdentity;Ljava/lang/Long;)V

    return-object v0

    .line 292
    :cond_8
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    .line 200
    :cond_9
    new-instance v0, Lio/olvid/engine/encoder/DecodingException;

    invoke-direct {v0}, Lio/olvid/engine/encoder/DecodingException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBytesContactIdentity()[B
    .locals 1

    .line 190
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesContactIdentity:[B

    return-object v0
.end method

.method public getBytesGroupOwnerAndUid()[B
    .locals 5

    .line 175
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    array-length v1, v0

    iget-object v2, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 176
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    iget-object v2, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getBytesGroupUid()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesGroupUid:[B

    return-object v0
.end method

.method public getBytesMediatorOrGroupOwnerIdentity()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->bytesMediatorOrGroupOwnerIdentity:[B

    return-object v0
.end method

.method public getContactDisplayNameOrSerializedDetails()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 158
    iget v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->id:I

    return v0
.end method

.method public getPendingGroupMemberIdentities()[Lio/olvid/engine/engine/types/identities/ObvIdentity;
    .locals 1

    .line 194
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->pendingGroupMemberIdentities:[Lio/olvid/engine/engine/types/identities/ObvIdentity;

    return-object v0
.end method

.method public getSasToDisplay()[B
    .locals 1

    .line 163
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->sasToDisplay:[B

    return-object v0
.end method

.method public getSerializedGroupDetails()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lio/olvid/engine/engine/types/ObvDialog$Category;->serializedGroupDetails:Ljava/lang/String;

    return-object v0
.end method
