.class Lio/olvid/messenger/activities/IdentityCreationActivity$2;
.super Ljava/lang/Object;
.source "IdentityCreationActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/IdentityCreationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/IdentityCreationActivity;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

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
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    const v3, 0x7f1001c0

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$200(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$300(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$100(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v2, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    const v3, 0x7f1001c1

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/IdentityCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 161
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$200(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lio/olvid/messenger/activities/IdentityCreationActivity$2;->this$0:Lio/olvid/messenger/activities/IdentityCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/IdentityCreationActivity;->access$300(Lio/olvid/messenger/activities/IdentityCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
