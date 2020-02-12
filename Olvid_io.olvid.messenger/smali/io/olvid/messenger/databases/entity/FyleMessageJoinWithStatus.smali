.class public Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
.super Ljava/lang/Object;
.source "FyleMessageJoinWithStatus.java"


# static fields
.field public static final BYTES_OWNED_IDENTITY:Ljava/lang/String; = "bytes_owned_identity"

.field public static final ENGINE_MESSAGE_IDENTIFIER:Ljava/lang/String; = "engine_message_identifier"

.field public static final ENGINE_NUMBER:Ljava/lang/String; = "engine_number"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final FYLE_ID:Ljava/lang/String; = "fyle_id"

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "file_type"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_COMPLETE:I = 0x4

.field public static final STATUS_COPYING:I = 0x5

.field public static final STATUS_DOWNLOADABLE:I = 0x0

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_DRAFT:I = 0x2

.field public static final STATUS_FAILED:I = 0x6

.field public static final STATUS_UPLOADING:I = 0x3

.field public static final TABLE_NAME:Ljava/lang/String; = "fyle_message_join_with_status"

.field public static final imageAndVideoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public bytesOwnedIdentity:[B

.field public engineMessageIdentifier:[B

.field public engineNumber:Ljava/lang/Integer;

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field public final fyleId:J

.field public final messageId:J

.field public mimeType:Ljava/lang/String;

.field public progress:F

.field public size:J

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(video|image)/.+"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->imageAndVideoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fyleId:J

    .line 112
    iput-wide p3, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->messageId:J

    .line 113
    iput-object p5, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->bytesOwnedIdentity:[B

    .line 114
    iput-object p6, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    .line 115
    iput-object p7, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    .line 117
    iput p9, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->status:I

    .line 118
    iput-wide p10, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    .line 119
    iput p12, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->progress:F

    .line 120
    iput-object p13, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineMessageIdentifier:[B

    .line 121
    iput-object p14, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->engineNumber:Ljava/lang/Integer;

    return-void
.end method

.method public static createCopying(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
    .locals 16

    .line 140
    new-instance v15, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    const/4 v9, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    return-object v15
.end method

.method public static createDraft(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;
    .locals 16

    .line 126
    new-instance v15, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    const/4 v9, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v14}, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;-><init>(JJ[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJF[BLjava/lang/Integer;)V

    return-object v15
.end method
