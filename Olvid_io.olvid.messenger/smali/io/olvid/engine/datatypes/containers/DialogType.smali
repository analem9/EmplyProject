.class public Lio/olvid/engine/datatypes/containers/DialogType;
.super Ljava/lang/Object;
.source "DialogType.java"


# static fields
.field public static final ACCEPT_GROUP_INVITE_DIALOG_ID:I = 0x8

.field public static final ACCEPT_INVITE_DIALOG_ID:I = 0x1

.field public static final ACCEPT_MEDIATOR_INVITE_DIALOG_ID:I = 0x6

.field public static final AUTO_CONFIRMED_CONTACT_INTRODUCTION_DIALOG_ID:I = 0xb

.field public static final DELETE_DIALOG_ID:I = -0x1

.field public static final GROUP_JOINED_DIALOG_ID:I = 0xc

.field public static final INCREASE_GROUP_OWNER_TRUST_LEVEL_DIALOG_ID:I = 0xa

.field public static final INCREASE_MEDIATOR_TRUST_LEVEL_DIALOG_ID:I = 0x9

.field public static final INVITE_ACCEPTED_DIALOG_ID:I = 0x5

.field public static final INVITE_SENT_DIALOG_ID:I = 0x0

.field public static final MEDIATOR_INVITE_ACCEPTED_DIALOG_ID:I = 0x7

.field public static final MUTUAL_TRUST_CONFIRMED_DIALOG_ID:I = 0x4

.field public static final SAS_CONFIRMED_DIALOG_ID:I = 0x3

.field public static final SAS_EXCHANGE_DIALOG_ID:I = 0x2


# instance fields
.field public final contactDisplayNameOrSerializedDetails:Ljava/lang/String;

.field public final contactIdentity:Lio/olvid/engine/datatypes/Identity;

.field public final groupUid:Lio/olvid/engine/datatypes/UID;

.field public final id:I

.field public final mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

.field public final pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

.field public final pendingGroupMemberSerializedDetails:[Ljava/lang/String;

.field public final sasEntered:[B

.field public final sasToDisplay:[B

.field public final serializedGroupDetails:Ljava/lang/String;

.field public final serverTimestamp:Ljava/lang/Long;


# direct methods
.method private constructor <init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lio/olvid/engine/datatypes/containers/DialogType;->id:I

    .line 37
    iput-object p2, p0, Lio/olvid/engine/datatypes/containers/DialogType;->contactDisplayNameOrSerializedDetails:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lio/olvid/engine/datatypes/containers/DialogType;->contactIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 39
    iput-object p4, p0, Lio/olvid/engine/datatypes/containers/DialogType;->sasToDisplay:[B

    .line 40
    iput-object p5, p0, Lio/olvid/engine/datatypes/containers/DialogType;->sasEntered:[B

    .line 41
    iput-object p6, p0, Lio/olvid/engine/datatypes/containers/DialogType;->mediatorOrGroupOwnerIdentity:Lio/olvid/engine/datatypes/Identity;

    .line 42
    iput-object p7, p0, Lio/olvid/engine/datatypes/containers/DialogType;->serializedGroupDetails:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lio/olvid/engine/datatypes/containers/DialogType;->groupUid:Lio/olvid/engine/datatypes/UID;

    .line 44
    iput-object p9, p0, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberIdentities:[Lio/olvid/engine/datatypes/Identity;

    .line 45
    iput-object p10, p0, Lio/olvid/engine/datatypes/containers/DialogType;->pendingGroupMemberSerializedDetails:[Ljava/lang/String;

    .line 46
    iput-object p11, p0, Lio/olvid/engine/datatypes/containers/DialogType;->serverTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public static createAcceptGroupInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 86
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createAcceptInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 58
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createAcceptMediatorInviteDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 78
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v1, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createAutoConfirmedContactIntroductionDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 98
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/16 v1, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createDeleteDialog()Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 50
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createGroupJoinedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 102
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createIncreaseGroupOwnerTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/UID;Lio/olvid/engine/datatypes/Identity;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;J)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 94
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v12

    move-object v6, p2

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createIncreaseMediatorTrustLevelDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;J)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 90
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v1, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 74
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createInviteSentDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 54
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createMediatorInviteAcceptedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 82
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createMutualTrustConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 70
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createSasConfirmedDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[B)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 66
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method

.method public static createSasExchangeDialog(Ljava/lang/String;Lio/olvid/engine/datatypes/Identity;[BJ)Lio/olvid/engine/datatypes/containers/DialogType;
    .locals 13

    .line 62
    new-instance v12, Lio/olvid/engine/datatypes/containers/DialogType;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v11}, Lio/olvid/engine/datatypes/containers/DialogType;-><init>(ILjava/lang/String;Lio/olvid/engine/datatypes/Identity;[B[BLio/olvid/engine/datatypes/Identity;Ljava/lang/String;Lio/olvid/engine/datatypes/UID;[Lio/olvid/engine/datatypes/Identity;[Ljava/lang/String;Ljava/lang/Long;)V

    return-object v12
.end method
