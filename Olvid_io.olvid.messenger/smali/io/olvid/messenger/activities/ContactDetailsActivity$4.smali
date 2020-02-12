.class Lio/olvid/messenger/activities/ContactDetailsActivity$4;
.super Ljava/lang/Object;
.source "ContactDetailsActivity.java"

# interfaces
.implements Lio/olvid/messenger/App$SmallQrCodeBitmapSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/ContactDetailsActivity;->displayDetails(Lio/olvid/messenger/databases/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/ContactDetailsActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$4;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public saveSmallQrCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lio/olvid/messenger/activities/ContactDetailsActivity$4;->this$0:Lio/olvid/messenger/activities/ContactDetailsActivity;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/ContactDetailsActivity;->access$002(Lio/olvid/messenger/activities/ContactDetailsActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
