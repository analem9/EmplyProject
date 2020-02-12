.class Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;
.super Ljava/lang/Object;
.source "IdentityCreationActivityNoAPI.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v0, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    const v1, 0x7f1001c0

    invoke-virtual {v0, v1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$200(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;->access$300(Lio/olvid/messenger/activities/IdentityCreationActivityNoAPI;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
