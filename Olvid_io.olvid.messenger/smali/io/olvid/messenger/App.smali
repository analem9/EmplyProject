.class public Lio/olvid/messenger/App;
.super Landroid/app/Application;
.source "App.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/olvid/messenger/App$AppStartupTasks;,
        Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;,
        Lio/olvid/messenger/App$ToastGravity;,
        Lio/olvid/messenger/App$ToastLength;
    }
.end annotation


# static fields
.field public static final CAMERA_PICTURE_FOLDER:Ljava/lang/String; = "camera_pictures"

.field public static final TIMESTAMP_FILE_NAME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd@HHmmss"

.field private static application:Landroid/app/Application;

.field public static backgroundRestrictedToShow:Z

.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field public static unAccentPattern:Ljava/util/regex/Pattern;


# instance fields
.field foregroundTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/App;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lio/olvid/messenger/App;->backgroundRestrictedToShow:Z

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 420
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/olvid/messenger/App;->unAccentPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lio/olvid/messenger/App;->foregroundTimestamp:J

    return-void
.end method

.method static synthetic access$000()Landroid/app/Application;
    .locals 1

    .line 66
    invoke-static {}, Lio/olvid/messenger/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method private static getApplication()Landroid/app/Application;
    .locals 1

    .line 73
    sget-object v0, Lio/olvid/messenger/App;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 79
    invoke-static {}, Lio/olvid/messenger/App;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDayOfDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 5

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f1001e1

    .line 262
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_4

    .line 264
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0x1ee62800

    add-long/2addr v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    .line 268
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x12

    .line 272
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 270
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const p1, 0x7f1001e4

    .line 266
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInitial(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_4

    .line 333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 342
    :cond_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 343
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x200d

    if-eq v2, v5, :cond_1

    const v2, 0x1f3fb

    if-gt v2, v3, :cond_3

    const v2, 0x1f3ff

    if-le v3, v2, :cond_1

    .line 346
    :cond_3
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static getLongNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 7

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 248
    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v4, 0x1ee62800

    add-long/2addr v4, p1

    const v2, 0x7f1001cb

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    .line 250
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x10012

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNiceDateString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 7

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 232
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 234
    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v4, 0x1ee62800

    add-long/2addr v4, p1

    const v2, 0x7f1001cb

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    .line 236
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x10010

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    invoke-static {p0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, p2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEmojiCodepoint(I)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0x1f600

    if-lt p0, v1, :cond_0

    const v1, 0x1f64f

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const v1, 0x1f300

    if-lt p0, v1, :cond_1

    const v1, 0x1f5ff

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const v1, 0x1f680

    if-lt p0, v1, :cond_2

    const v1, 0x1f6ff

    if-gt p0, v1, :cond_2

    return v0

    :cond_2
    const v1, 0x1f1e6

    if-lt p0, v1, :cond_3

    const v1, 0x1f1ff

    if-gt p0, v1, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x2600

    if-lt p0, v1, :cond_4

    const/16 v1, 0x26ff

    if-gt p0, v1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x2700

    if-lt p0, v1, :cond_5

    const/16 v1, 0x27bf

    if-gt p0, v1, :cond_5

    return v0

    :cond_5
    const v1, 0xe0020

    if-lt p0, v1, :cond_6

    const v1, 0xe007f

    if-gt p0, v1, :cond_6

    return v0

    :cond_6
    const v1, 0xfe00

    if-lt p0, v1, :cond_7

    const v1, 0xfe0f

    if-gt p0, v1, :cond_7

    return v0

    :cond_7
    const v1, 0x1f900

    if-lt p0, v1, :cond_8

    const v1, 0x1f9ff

    if-gt p0, v1, :cond_8

    return v0

    :cond_8
    const v1, 0x1f018

    if-lt p0, v1, :cond_9

    const v1, 0x1f270

    if-gt p0, v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0x238c

    if-lt p0, v1, :cond_a

    const/16 v1, 0x2454

    if-gt p0, v1, :cond_a

    return v0

    :cond_a
    const/16 v1, 0x20d0

    if-lt p0, v1, :cond_b

    const/16 v1, 0x20ff

    if-gt p0, v1, :cond_b

    return v0

    :cond_b
    const/16 v1, 0x200d

    if-ne p0, v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isShortEmojiString(Ljava/lang/String;I)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 354
    :cond_0
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v1

    .line 355
    invoke-virtual {v1, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    const/4 v3, 0x0

    .line 364
    :goto_0
    invoke-static {v2}, Lio/olvid/messenger/App;->isEmojiCodepoint(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 367
    :cond_1
    invoke-virtual {v1}, Ljava/text/BreakIterator;->next()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 368
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x200d

    if-eq v4, v6, :cond_6

    const v4, 0x1f3fb

    if-gt v4, v5, :cond_3

    const v4, 0x1f3ff

    if-le v5, v4, :cond_6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 372
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_4

    goto :goto_2

    :cond_4
    if-le v3, p1, :cond_6

    :goto_2
    if-gt v3, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    move v2, v5

    goto :goto_0

    :cond_7
    :goto_3
    return v0
.end method

.method public static openCameraScanActivity(Landroid/content/Context;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 3

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/CameraScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pattern"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pattern_mismatch_message"

    .line 159
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openContactDetailsActivity(Landroid/content/Context;[B[B)V
    .locals 3

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "contact_bytes_identity"

    .line 176
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "contact_bytes_owned_identity"

    .line 177
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openDiscussionActivity(Landroid/content/Context;J)V
    .locals 3

    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "discussion_id"

    .line 124
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 125
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openFyle(Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;)V
    .locals 2

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao$FyleAndStatus;->fyleMessageJoinWithStatus:Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    iget-object p0, p0, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const p0, 0x10000001

    .line 220
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 221
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 222
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 223
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const p0, 0x7f10020b

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, v0}, Lio/olvid/messenger/App;->toast(II)V

    :goto_0
    return-void
.end method

.method public static openGroupCreationActivity(Landroid/content/Context;)V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGroupDetailsActivity(Landroid/content/Context;[B[B)V
    .locals 3

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bytes_owned_identity"

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "group_id"

    .line 184
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGroupDetailsActivityForEditDetails(Landroid/content/Context;[B[B)V
    .locals 3

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/GroupDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bytes_owned_identity"

    .line 190
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "group_id"

    .line 191
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "edit_details"

    const/4 p2, 0x1

    .line 192
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openGroupDiscussionActivity(Landroid/content/Context;[B[B)V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bytes_owned_identity"

    .line 140
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "bytes_group_uid"

    .line 141
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 142
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openMessageDetails(Landroid/content/Context;JZ)V
    .locals 3

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MessageDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "message_id"

    .line 198
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "has_attachments"

    .line 199
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openMyId(Landroid/content/Context;)V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "forward_action"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "tab_to_show"

    const/4 v2, 0x1

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    const-class v1, Lio/olvid/messenger/activities/MyIdActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "forward_to"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openOneToOneDiscussionActivity(Landroid/content/Context;[B[B)V
    .locals 3

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/DiscussionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bytes_owned_identity"

    .line 132
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "bytes_contact_identity"

    .line 133
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 p1, 0x24000000

    .line 134
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static processLink(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/ObvLinkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static runThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 328
    sget-object v0, Lio/olvid/messenger/App;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static setQrCodeImage(Landroid/widget/ImageView;Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;)V
    .locals 1

    .line 434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 435
    new-instance p0, Lio/olvid/messenger/App$2;

    invoke-direct {p0, p1, p2, v0}, Lio/olvid/messenger/App$2;-><init>(Lio/olvid/engine/engine/types/identities/ObvUrlIdentity;Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;Ljava/lang/ref/WeakReference;)V

    invoke-static {p0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showMainActivityTab(Landroid/content/Context;I)V
    .locals 3

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/olvid/messenger/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "tab_to_show"

    .line 213
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static toast(II)V
    .locals 1

    .line 289
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x50

    invoke-static {p0, p1, v0}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V

    return-void
.end method

.method public static toast(III)V
    .locals 1

    .line 293
    invoke-static {}, Lio/olvid/messenger/App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/olvid/messenger/App;->toast(Ljava/lang/String;II)V

    return-void
.end method

.method public static toast(Ljava/lang/String;II)V
    .locals 2

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/olvid/messenger/App$1;

    invoke-direct {v1, p0, p2, p1}, Lio/olvid/messenger/App$1;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static unAccent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 422
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 423
    sget-object v0, Lio/olvid/messenger/App;->unAccentPattern:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 425
    :cond_0
    sget-object v0, Lio/olvid/messenger/App;->unAccentPattern:Ljava/util/regex/Pattern;

    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 87
    sput-object p0, Lio/olvid/messenger/App;->application:Landroid/app/Application;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "activity"

    .line 90
    invoke-virtual {p0, v0}, Lio/olvid/messenger/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 92
    sput-boolean v0, Lio/olvid/messenger/App;->backgroundRestrictedToShow:Z

    .line 96
    :cond_0
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 98
    new-instance v0, Lio/olvid/messenger/App$AppStartupTasks;

    invoke-direct {v0}, Lio/olvid/messenger/App$AppStartupTasks;-><init>()V

    invoke-static {v0}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 105
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/Engine;->connectWebsocket()V

    .line 106
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getCurrentIdentity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;

    iget-object v0, v0, Lio/olvid/messenger/databases/entity/OwnedIdentity;->bytesOwnedIdentity:[B

    invoke-virtual {p1, v0}, Lio/olvid/engine/engine/Engine;->downloadMessages([B)V

    .line 109
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/olvid/messenger/App;->foregroundTimestamp:J

    const/16 p1, 0x64

    .line 110
    invoke-static {p1}, Lio/olvid/messenger/AnonymousUsageService;->log(I)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 6

    .line 115
    invoke-static {}, Lio/olvid/messenger/AppSingleton;->getEngine()Lio/olvid/engine/engine/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/engine/engine/Engine;->disconnectWebsocket()V

    .line 116
    iget-wide v0, p0, Lio/olvid/messenger/App;->foregroundTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/16 p1, 0x65

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lio/olvid/messenger/App;->foregroundTimestamp:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/olvid/messenger/AnonymousUsageService;->log(ILjava/lang/Integer;)V

    .line 118
    iput-wide v2, p0, Lio/olvid/messenger/App;->foregroundTimestamp:J

    :cond_0
    return-void
.end method
