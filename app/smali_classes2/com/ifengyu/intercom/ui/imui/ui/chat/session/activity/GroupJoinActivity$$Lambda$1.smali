.class final synthetic Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

.field private final arg$2:Lcom/ifengyu/im/DB/entity/GroupEntity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;Lcom/ifengyu/im/DB/entity/GroupEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;->arg$2:Lcom/ifengyu/im/DB/entity/GroupEntity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;->arg$1:Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity$$Lambda$1;->arg$2:Lcom/ifengyu/im/DB/entity/GroupEntity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/activity/GroupJoinActivity;->lambda$showApplyJoinGroupDialog$1$GroupJoinActivity(Lcom/ifengyu/im/DB/entity/GroupEntity;Landroid/content/DialogInterface;I)V

    return-void
.end method
