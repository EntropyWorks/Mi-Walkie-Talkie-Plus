.class Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;
.super Ljava/lang/Object;
.source "DolphinSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity$7;->a:Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/DolphinSettingActivity;->k()V

    return-void
.end method
