.class public final synthetic Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$m1D1XmhYoOJveAMVJUhqb1XJmWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;


# direct methods
.method public synthetic constructor <init>(Lio/olvid/messenger/activities/MessageDetailsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$m1D1XmhYoOJveAMVJUhqb1XJmWE;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/olvid/messenger/activities/-$$Lambda$MessageDetailsActivity$m1D1XmhYoOJveAMVJUhqb1XJmWE;->f$0:Lio/olvid/messenger/activities/MessageDetailsActivity;

    check-cast p1, Lio/olvid/messenger/databases/entity/Message;

    invoke-static {v0, p1}, Lio/olvid/messenger/activities/MessageDetailsActivity;->lambda$m1D1XmhYoOJveAMVJUhqb1XJmWE(Lio/olvid/messenger/activities/MessageDetailsActivity;Lio/olvid/messenger/databases/entity/Message;)V

    return-void
.end method
