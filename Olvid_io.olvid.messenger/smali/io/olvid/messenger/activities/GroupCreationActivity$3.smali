.class Lio/olvid/messenger/activities/GroupCreationActivity$3;
.super Ljava/lang/Object;
.source "GroupCreationActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/olvid/messenger/activities/GroupCreationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/olvid/messenger/activities/GroupCreationActivity;


# direct methods
.method constructor <init>(Lio/olvid/messenger/activities/GroupCreationActivity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

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

    .line 182
    :cond_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$200(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$200(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    const v3, 0x7f1001be

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/GroupCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$300(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$400(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$200(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$200(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    iget-object v2, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    const v3, 0x7f1001c2

    invoke-virtual {v2, v3}, Lio/olvid/messenger/activities/GroupCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 177
    :cond_3
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$300(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$400(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-static {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->access$000(Lio/olvid/messenger/activities/GroupCreationActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    :goto_0
    iget-object p1, p0, Lio/olvid/messenger/activities/GroupCreationActivity$3;->this$0:Lio/olvid/messenger/activities/GroupCreationActivity;

    invoke-virtual {p1}, Lio/olvid/messenger/activities/GroupCreationActivity;->invalidateOptionsMenu()V

    return-void
.end method
