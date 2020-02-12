.class public Lio/olvid/messenger/FyleContentProvider;
.super Landroid/content/ContentProvider;
.source "FyleContentProvider.java"


# static fields
.field public static final DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final SIZE:Ljava/lang/String; = "_size"


# instance fields
.field uriPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .line 103
    iget-object v0, p0, Lio/olvid/messenger/FyleContentProvider;->uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lio/olvid/engine/Logger;->fromHexString(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 107
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 108
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/olvid/messenger/databases/dao/FyleDao;->getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v0

    iget-wide v3, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v0, v3, v4, v1, v2}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->mimeType:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://io.olvid.messenger.PROVIDER/"

    const-string v2, "[.]"

    const-string v3, "\\."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "([0-9A-Fa-f]{64})/([0-9]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/olvid/messenger/FyleContentProvider;->uriPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 33
    iget-object p2, p0, Lio/olvid/messenger/FyleContentProvider;->uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Lio/olvid/engine/Logger;->fromHexString(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 37
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 38
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/olvid/messenger/databases/dao/FyleDao;->getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 40
    invoke-virtual {p1}, Lio/olvid/messenger/databases/entity/Fyle;->isComplete()Z

    move-result p2

    const/high16 v2, 0x10000000

    if-eqz p2, :cond_0

    .line 41
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/Fyle;->filePath:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {p2, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object p2

    iget-wide v3, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {p2, v3, v4, v0, v1}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->filePath:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p2, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string p3, "_size"

    const-string p4, "_display_name"

    if-nez p2, :cond_0

    .line 65
    filled-new-array {p4, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 70
    :cond_0
    new-instance p5, Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    invoke-direct {p5, p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 71
    iget-object v1, p0, Lio/olvid/messenger/FyleContentProvider;->uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-static {v2}, Lio/olvid/engine/Logger;->fromHexString(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    .line 75
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 76
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lio/olvid/messenger/databases/AppDatabase;->fyleDao()Lio/olvid/messenger/databases/dao/FyleDao;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/olvid/messenger/databases/dao/FyleDao;->getBySha256([B)Lio/olvid/messenger/databases/entity/Fyle;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 78
    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->getInstance()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lio/olvid/messenger/databases/AppDatabase;->fyleMessageJoinWithStatusDao()Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;

    move-result-object v2

    iget-wide v5, p1, Lio/olvid/messenger/databases/entity/Fyle;->id:J

    invoke-interface {v2, v5, v6, v3, v4}, Lio/olvid/messenger/databases/dao/FyleMessageJoinWithStatusDao;->get(JJ)Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 80
    array-length v2, p2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 81
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_6

    .line 82
    aget-object v4, p2, v3

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x1d1c5239    # -2.0999664E21f

    if-eq v6, v7, :cond_2

    const v7, 0x57098e0

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v1, :cond_4

    const/4 v4, 0x0

    .line 90
    aput-object v4, v2, v3

    goto :goto_2

    .line 87
    :cond_4
    iget-wide v4, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_2

    .line 84
    :cond_5
    iget-object v4, p1, Lio/olvid/messenger/databases/entity/FyleMessageJoinWithStatus;->fileName:Ljava/lang/String;

    aput-object v4, v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_6
    invoke-virtual {p5, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7
    return-object p5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
