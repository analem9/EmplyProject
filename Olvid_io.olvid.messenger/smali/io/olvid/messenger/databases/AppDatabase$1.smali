.class final Lio/olvid/messenger/databases/AppDatabase$1;
.super Landroidx/room/RoomDatabase$Callback;
.source "AppDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/olvid/messenger/databases/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Landroidx/room/RoomDatabase$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 96
    new-instance p1, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;

    invoke-static {}, Lio/olvid/messenger/databases/AppDatabase;->access$000()Lio/olvid/messenger/databases/AppDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/olvid/messenger/databases/AppDatabase$DatabaseOpenCallback;-><init>(Lio/olvid/messenger/databases/AppDatabase;)V

    invoke-static {p1}, Lio/olvid/messenger/App;->runThread(Ljava/lang/Runnable;)V

    return-void
.end method
