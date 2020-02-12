.class Lio/olvid/messenger/activities/MyIdActivity$3;
.super Ljava/lang/Object;
.source "MyIdActivity.java"

# interfaces
.implements Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/MyIdActivity;->displayDetails(Lio/olvid/messenger/databases/entity/OwnedIdentity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/MyIdActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/MyIdActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lio/olvid/messenger/activities/MyIdActivity$3;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveSmallQrCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lio/olvid/messenger/activities/MyIdActivity$3;->this$0:Lio/olvid/messenger/activities/MyIdActivity;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/MyIdActivity;->access$202(Lio/olvid/messenger/activities/MyIdActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
