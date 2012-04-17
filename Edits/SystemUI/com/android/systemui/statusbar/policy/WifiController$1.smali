.class Lcom/android/systemui/statusbar/policy/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/WifiController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    #getter for: Lcom/android/systemui/statusbar/policy/WifiController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/WifiController;->access$100(Lcom/android/systemui/statusbar/policy/WifiController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiController$1;->this$0:Lcom/android/systemui/statusbar/policy/WifiController;

    #calls: Lcom/android/systemui/statusbar/policy/WifiController;->handleStateChanged(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/WifiController;->access$000(Lcom/android/systemui/statusbar/policy/WifiController;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    return-void
.end method
