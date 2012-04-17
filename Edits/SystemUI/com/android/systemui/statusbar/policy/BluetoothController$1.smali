.class Lcom/android/systemui/statusbar/policy/BluetoothController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "STATUSBAR-BluetoothController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothController;

    #getter for: Lcom/android/systemui/statusbar/policy/BluetoothController;->mButton:Lcom/android/systemui/statusbar/policy/QuickSettingButton;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->access$100(Lcom/android/systemui/statusbar/policy/BluetoothController;)Lcom/android/systemui/statusbar/policy/QuickSettingButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$1;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothController;

    #calls: Lcom/android/systemui/statusbar/policy/BluetoothController;->handleStateChanged(I)I
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->access$000(Lcom/android/systemui/statusbar/policy/BluetoothController;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickSettingButton;->setActivateStatus(I)V

    return-void
.end method
